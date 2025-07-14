# Install script for directory: /Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/network

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "default")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set path to fallback-tool for dependency-resolution.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/build/lib/libns3.45-network-default.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.45-network-default.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.45-network-default.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/build/lib"
      -add_rpath "/usr/local/lib:$ORIGIN/:$ORIGIN/../lib:/usr/local/lib64:$ORIGIN/:$ORIGIN/../lib64"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.45-network-default.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.45-network-default.dylib")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ns3" TYPE FILE FILES
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/network/helper/application-container.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/network/helper/application-helper.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/network/helper/delay-jitter-estimation.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/network/helper/net-device-container.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/network/helper/node-container.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/network/helper/packet-socket-helper.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/network/helper/simple-net-device-helper.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/network/helper/trace-helper.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/network/model/address.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/network/model/application.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/network/model/buffer.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/network/model/byte-tag-list.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/network/model/channel-list.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/network/model/channel.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/network/model/chunk.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/network/model/header.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/network/model/net-device.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/network/model/nix-vector.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/network/model/node-list.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/network/model/node.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/network/model/packet-metadata.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/network/model/packet-tag-list.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/network/model/packet.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/network/model/socket-factory.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/network/model/socket.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/network/model/tag-buffer.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/network/model/tag.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/network/model/trailer.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/network/test/header-serialization-test.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/network/utils/address-utils.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/network/utils/bit-deserializer.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/network/utils/bit-serializer.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/network/utils/crc32.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/network/utils/data-rate.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/network/utils/drop-tail-queue.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/network/utils/dynamic-queue-limits.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/network/utils/error-channel.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/network/utils/error-model.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/network/utils/ethernet-header.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/network/utils/ethernet-trailer.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/network/utils/flow-id-tag.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/network/utils/generic-phy.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/network/utils/inet-socket-address.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/network/utils/inet6-socket-address.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/network/utils/ipv4-address.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/network/utils/ipv6-address.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/network/utils/llc-snap-header.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/network/utils/lollipop-counter.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/network/utils/mac16-address.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/network/utils/mac48-address.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/network/utils/mac64-address.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/network/utils/mac8-address.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/network/utils/net-device-queue-interface.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/network/utils/output-stream-wrapper.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/network/utils/packet-burst.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/network/utils/packet-data-calculators.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/network/utils/packet-probe.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/network/utils/packet-socket-address.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/network/utils/packet-socket-client.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/network/utils/packet-socket-factory.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/network/utils/packet-socket-server.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/network/utils/packet-socket.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/network/utils/packetbb.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/network/utils/pcap-file-wrapper.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/network/utils/pcap-file.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/network/utils/pcap-test.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/network/utils/queue-fwd.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/network/utils/queue-item.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/network/utils/queue-limits.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/network/utils/queue-size.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/network/utils/queue.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/network/utils/radiotap-header.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/network/utils/sequence-number.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/network/utils/simple-channel.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/network/utils/simple-net-device.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/network/utils/sll-header.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/network/utils/timestamp-tag.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/build/include/ns3/network-module.h"
    )
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/cmake-cache/src/network/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
