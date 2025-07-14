# Install script for directory: /Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/build/lib/libns3.45-core-default.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.45-core-default.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.45-core-default.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -add_rpath "/usr/local/lib:$ORIGIN/:$ORIGIN/../lib:/usr/local/lib64:$ORIGIN/:$ORIGIN/../lib64"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.45-core-default.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.45-core-default.dylib")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ns3" TYPE FILE FILES
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/build/include/ns3/core-config.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/int64x64-128.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/helper/csv-reader.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/helper/event-garbage-collector.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/helper/random-variable-stream-helper.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/abort.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/ascii-file.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/ascii-test.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/assert.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/attribute-accessor-helper.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/attribute-construction-list.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/attribute-container.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/attribute-helper.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/attribute.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/boolean.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/breakpoint.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/build-profile.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/calendar-scheduler.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/callback.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/command-line.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/config.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/default-deleter.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/default-simulator-impl.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/demangle.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/deprecated.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/des-metrics.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/double.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/enum.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/event-id.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/event-impl.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/fatal-error.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/fatal-impl.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/fd-reader.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/environment-variable.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/global-value.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/hash-fnv.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/hash-function.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/hash-murmur3.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/hash.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/heap-scheduler.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/int64x64-double.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/int64x64.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/integer.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/length.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/list-scheduler.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/log-macros-disabled.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/log-macros-enabled.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/log.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/make-event.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/map-scheduler.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/math.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/names.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/node-printer.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/nstime.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/object-base.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/object-factory.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/object-map.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/object-ptr-container.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/object-vector.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/object.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/pair.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/pointer.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/priority-queue-scheduler.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/ptr.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/random-variable-stream.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/rng-seed-manager.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/rng-stream.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/scheduler.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/show-progress.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/shuffle.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/simple-ref-count.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/simulation-singleton.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/simulator-impl.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/simulator.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/singleton.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/string.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/synchronizer.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/system-path.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/system-wall-clock-ms.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/system-wall-clock-timestamp.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/test.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/time-printer.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/timer-impl.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/timer.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/trace-source-accessor.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/traced-callback.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/traced-value.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/trickle-timer.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/tuple.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/type-id.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/type-name.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/type-traits.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/uinteger.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/uniform-random-bit-generator.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/valgrind.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/vector.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/warnings.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/watchdog.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/realtime-simulator-impl.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/wall-clock-synchronizer.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/val-array.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/src/core/model/matrix-array.h"
    "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/build/include/ns3/core-module.h"
    )
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "/Users/mthang1201/source/repos/drl-xapp-handover/ns-dev/cmake-cache/src/core/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
