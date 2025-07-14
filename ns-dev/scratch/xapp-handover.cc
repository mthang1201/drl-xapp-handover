#include "ns3/core-module.h"
#include "ns3/network-module.h"
#include "ns3/internet-module.h"
#include "ns3/mobility-module.h"
#include "ns3/lte-module.h"
#include "ns3/config-store-module.h"
#include <fstream>
#include <string>
#include <map>

using namespace ns3;

NS_LOG_COMPONENT_DEFINE("XappHandoverSim");

std::map<int, Ptr<NetDevice>> ueDeviceMap;
std::map<int, Ptr<NetDevice>> enbDeviceMap;

void ExportState(const Ptr<LteHelper> lteHelper, NodeContainer ueNodes) {
    std::ofstream file("data/state.json");
    file << "{\n";

    for (uint32_t i = 0; i < ueNodes.GetN(); ++i) {
        Ptr<NetDevice> dev = ueNodes.Get(i)->GetDevice(0);
        Ptr<UeNetDevice> ueDev = dev->GetObject<UeNetDevice>();
        uint16_t cellId = ueDev->GetRrc()->GetCellId();
        double rsrpDbm = ueDev->GetPhy()->GetRsrp();

        file << "  \"ue_" << i << "\": { \"cellId\": " << cellId << ", \"rsrp\": " << rsrpDbm << " }";
        if (i < ueNodes.GetN() - 1) file << ",";
        file << "\n";
    }

    file << "}\n";
    file.close();
}

void ApplyHandoverActions(const std::string &filename, Ptr<LteHelper> lteHelper) {
    std::ifstream file(filename);
    if (!file.is_open()) return;

    std::string line, jsonText;
    while (std::getline(file, line)) jsonText += line;
    file.close();

    size_t pos = 0;
    while ((pos = jsonText.find("{")) != std::string::npos) {
        size_t end = jsonText.find("}", pos);
        if (end == std::string::npos) break;

        std::string obj = jsonText.substr(pos, end - pos + 1);
        int ueId = -1, targetCell = -1;

        size_t uePos = obj.find("\"ue\"");
        if (uePos != std::string::npos) {
            size_t colon = obj.find(":", uePos);
            ueId = std::stoi(obj.substr(colon + 1));
        }

        size_t tgtPos = obj.find("\"target\"");
        if (tgtPos != std::string::npos) {
            size_t colon = obj.find(":", tgtPos);
            targetCell = std::stoi(obj.substr(colon + 1));
        }

        if (ueId >= 0 && targetCell >= 0 && ueDeviceMap.count(ueId) && enbDeviceMap.count(targetCell)) {
            Ptr<NetDevice> ue = ueDeviceMap[ueId];
            Ptr<UeNetDevice> ueNd = ue->GetObject<UeNetDevice>();
            uint16_t currentCell = ueNd->GetRrc()->GetCellId();

            Ptr<NetDevice> currentEnb = nullptr;
            for (const auto &kv : enbDeviceMap) {
                Ptr<EnbNetDevice> enb = kv.second->GetObject<EnbNetDevice>();
                if (enb->GetCellId() == currentCell) {
                    currentEnb = kv.second;
                    break;
                }
            }

            if (currentEnb) {
                NS_LOG_INFO("Handover UE " << ueId << " to cell " << targetCell);
                Simulator::ScheduleNow(&LteHelper::HandoverRequest, lteHelper, ue, currentEnb, enbDeviceMap[targetCell]);
            }
        }
        jsonText = jsonText.substr(end + 1);
    }
}

int main(int argc, char *argv[]) {
    Time simTime = Seconds(10);
    LogComponentEnable("XappHandoverSim", LOG_LEVEL_INFO);

    Ptr<LteHelper> lteHelper = CreateObject<LteHelper>();
    lteHelper->SetHandoverAlgorithmType("ns3::NoOpHandoverAlgorithm");
    Ptr<PointToPointEpcHelper> epcHelper = CreateObject<PointToPointEpcHelper>();
    lteHelper->SetEpcHelper(epcHelper);

    NodeContainer enbNodes, ueNodes;
    enbNodes.Create(3);
    ueNodes.Create(5);

    MobilityHelper enbMobility;
    enbMobility.SetMobilityModel("ns3::ConstantPositionMobilityModel");
    enbMobility.Install(enbNodes);
    enbNodes.Get(0)->GetObject<MobilityModel>()->SetPosition(Vector(0.0, 0.0, 0.0));
    enbNodes.Get(1)->GetObject<MobilityModel>()->SetPosition(Vector(100.0, 0.0, 0.0));
    enbNodes.Get(2)->GetObject<MobilityModel>()->SetPosition(Vector(50.0, 100.0, 0.0));

    MobilityHelper ueMobility;
    ueMobility.SetMobilityModel("ns3::RandomWalk2dMobilityModel",
                                "Bounds", RectangleValue(Rectangle(-150, 150, -150, 150)));
    ueMobility.Install(ueNodes);

    NetDeviceContainer enbDevs = lteHelper->InstallEnbDevice(enbNodes);
    NetDeviceContainer ueDevs = lteHelper->InstallUeDevice(ueNodes);

    InternetStackHelper internet;
    internet.Install(ueNodes);
    epcHelper->AssignUeIpv4Address(ueDevs);

    for (uint32_t i = 0; i < ueDevs.GetN(); ++i) ueDeviceMap[i] = ueDevs.Get(i);
    for (uint32_t i = 0; i < enbDevs.GetN(); ++i) enbDeviceMap[i] = enbDevs.Get(i);

    for (uint32_t i = 0; i < ueNodes.GetN(); ++i) {
        lteHelper->Attach(ueDevs.Get(i));
    }

    for (double t = 1.0; t < simTime.GetSeconds(); t += 2.0) {
        Simulator::Schedule(Seconds(t), &ExportState, lteHelper, ueNodes);
        Simulator::Schedule(Seconds(t + 1), &ApplyHandoverActions, "data/actions.json", lteHelper);
    }

    Simulator::Stop(simTime);
    Simulator::Run();
    Simulator::Destroy();
    return 0;
}
