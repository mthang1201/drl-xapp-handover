# Install script for directory: /Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/wimax

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/build/lib/libns3.45-wimax-default.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.45-wimax-default.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.45-wimax-default.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/build/lib"
      -add_rpath "/usr/local/lib:$ORIGIN/:$ORIGIN/../lib:/usr/local/lib64:$ORIGIN/:$ORIGIN/../lib64"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.45-wimax-default.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.45-wimax-default.dylib")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ns3" TYPE FILE FILES
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/wimax/helper/wimax-helper.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/wimax/model/wimax-channel.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/wimax/model/wimax-net-device.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/wimax/model/bs-net-device.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/wimax/model/ss-net-device.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/wimax/model/cid.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/wimax/model/cid-factory.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/wimax/model/ofdm-downlink-frame-prefix.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/wimax/model/wimax-connection.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/wimax/model/ss-record.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/wimax/model/mac-messages.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/wimax/model/dl-mac-messages.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/wimax/model/ul-mac-messages.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/wimax/model/wimax-phy.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/wimax/model/simple-ofdm-wimax-phy.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/wimax/model/simple-ofdm-wimax-channel.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/wimax/model/send-params.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/wimax/model/service-flow.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/wimax/model/ss-manager.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/wimax/model/connection-manager.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/wimax/model/wimax-mac-header.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/wimax/model/wimax-mac-queue.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/wimax/model/crc8.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/wimax/model/service-flow-manager.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/wimax/model/bs-uplink-scheduler.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/wimax/model/bs-uplink-scheduler-simple.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/wimax/model/bs-uplink-scheduler-mbqos.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/wimax/model/bs-uplink-scheduler-rtps.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/wimax/model/ul-job.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/wimax/model/bs-scheduler.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/wimax/model/bs-scheduler-simple.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/wimax/model/bs-scheduler-rtps.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/wimax/model/service-flow-record.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/wimax/model/snr-to-block-error-rate-record.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/wimax/model/snr-to-block-error-rate-manager.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/wimax/model/simple-ofdm-send-param.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/wimax/model/ss-service-flow-manager.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/wimax/model/bs-service-flow-manager.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/wimax/model/cs-parameters.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/wimax/model/ipcs-classifier-record.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/wimax/model/wimax-tlv.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/wimax/model/ipcs-classifier.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/wimax/model/bvec.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/wimax/model/wimax-mac-to-mac-header.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/build/include/ns3/wimax-module.h"
    )
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/cmake-cache/src/wimax/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
