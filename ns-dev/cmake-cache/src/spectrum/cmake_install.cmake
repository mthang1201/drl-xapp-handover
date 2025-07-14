# Install script for directory: /Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/spectrum

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/build/lib/libns3.45-spectrum-default.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.45-spectrum-default.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.45-spectrum-default.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/build/lib"
      -add_rpath "/usr/local/lib:$ORIGIN/:$ORIGIN/../lib:/usr/local/lib64:$ORIGIN/:$ORIGIN/../lib64"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.45-spectrum-default.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.45-spectrum-default.dylib")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ns3" TYPE FILE FILES
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/spectrum/helper/adhoc-aloha-noack-ideal-phy-helper.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/spectrum/helper/spectrum-analyzer-helper.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/spectrum/helper/spectrum-helper.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/spectrum/helper/tv-spectrum-transmitter-helper.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/spectrum/helper/waveform-generator-helper.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/spectrum/model/aloha-noack-mac-header.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/spectrum/model/aloha-noack-net-device.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/spectrum/model/constant-spectrum-propagation-loss.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/spectrum/model/friis-spectrum-propagation-loss.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/spectrum/model/half-duplex-ideal-phy-signal-parameters.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/spectrum/model/half-duplex-ideal-phy.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/spectrum/model/ism-spectrum-value-helper.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/spectrum/model/matrix-based-channel-model.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/spectrum/model/microwave-oven-spectrum-value-helper.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/spectrum/model/two-ray-spectrum-propagation-loss-model.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/spectrum/model/multi-model-spectrum-channel.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/spectrum/model/non-communicating-net-device.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/spectrum/model/single-model-spectrum-channel.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/spectrum/model/spectrum-analyzer.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/spectrum/model/spectrum-channel.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/spectrum/model/spectrum-converter.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/spectrum/model/spectrum-error-model.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/spectrum/model/spectrum-interference.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/spectrum/model/spectrum-model-300kHz-300GHz-log.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/spectrum/model/spectrum-model-ism2400MHz-res1MHz.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/spectrum/model/spectrum-model.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/spectrum/model/spectrum-phy.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/spectrum/model/spectrum-propagation-loss-model.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/spectrum/model/spectrum-transmit-filter.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/spectrum/model/phased-array-spectrum-propagation-loss-model.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/spectrum/model/spectrum-signal-parameters.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/spectrum/model/spectrum-value.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/spectrum/model/three-gpp-channel-model.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/spectrum/model/three-gpp-spectrum-propagation-loss-model.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/spectrum/model/trace-fading-loss-model.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/spectrum/model/tv-spectrum-transmitter.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/spectrum/model/waveform-generator.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/spectrum/test/spectrum-test.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/build/include/ns3/spectrum-module.h"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/cmake-cache/src/spectrum/examples/cmake_install.cmake")

endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/cmake-cache/src/spectrum/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
