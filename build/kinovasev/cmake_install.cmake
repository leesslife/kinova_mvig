# Install script for directory: /home/ziye01/lees_ros/kinova_ws/src/kinovasev

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/ziye01/lees_ros/kinova_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
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

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  include("/home/ziye01/lees_ros/kinova_ws/build/kinovasev/catkin_generated/safe_execute_install.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kinovasev/msg" TYPE FILE FILES "/home/ziye01/lees_ros/kinova_ws/src/kinovasev/msg/realsense.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kinovasev/srv" TYPE FILE FILES
    "/home/ziye01/lees_ros/kinova_ws/src/kinovasev/srv/kinova_jointvalue.srv"
    "/home/ziye01/lees_ros/kinova_ws/src/kinovasev/srv/kinova_posevalue.srv"
    "/home/ziye01/lees_ros/kinova_ws/src/kinovasev/srv/kinova_jointvelocity.srv"
    "/home/ziye01/lees_ros/kinova_ws/src/kinovasev/srv/kinova_posevelocity.srv"
    "/home/ziye01/lees_ros/kinova_ws/src/kinovasev/srv/kinova_fingervalue.srv"
    "/home/ziye01/lees_ros/kinova_ws/src/kinovasev/srv/kinova_wheelchair_pose.srv"
    "/home/ziye01/lees_ros/kinova_ws/src/kinovasev/srv/kinova_wheelchair_velocity.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kinovasev/cmake" TYPE FILE FILES "/home/ziye01/lees_ros/kinova_ws/build/kinovasev/catkin_generated/installspace/kinovasev-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/ziye01/lees_ros/kinova_ws/devel/include/kinovasev")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/ziye01/lees_ros/kinova_ws/devel/share/roseus/ros/kinovasev")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/ziye01/lees_ros/kinova_ws/devel/share/common-lisp/ros/kinovasev")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/ziye01/lees_ros/kinova_ws/devel/share/gennodejs/ros/kinovasev")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/home/ziye01/miniconda3/envs/cg/bin/python3" -m compileall "/home/ziye01/lees_ros/kinova_ws/devel/lib/python3/dist-packages/kinovasev")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/ziye01/lees_ros/kinova_ws/devel/lib/python3/dist-packages/kinovasev")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/ziye01/lees_ros/kinova_ws/build/kinovasev/catkin_generated/installspace/kinovasev.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kinovasev/cmake" TYPE FILE FILES "/home/ziye01/lees_ros/kinova_ws/build/kinovasev/catkin_generated/installspace/kinovasev-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kinovasev/cmake" TYPE FILE FILES
    "/home/ziye01/lees_ros/kinova_ws/build/kinovasev/catkin_generated/installspace/kinovasevConfig.cmake"
    "/home/ziye01/lees_ros/kinova_ws/build/kinovasev/catkin_generated/installspace/kinovasevConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kinovasev" TYPE FILE FILES "/home/ziye01/lees_ros/kinova_ws/src/kinovasev/package.xml")
endif()

