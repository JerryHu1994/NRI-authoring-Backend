# Install script for directory: /home/hcilab/Documents/jieru/NRI-authoring-Backend/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/hcilab/Documents/jieru/NRI-authoring-Backend/install")
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

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/hcilab/Documents/jieru/NRI-authoring-Backend/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/hcilab/Documents/jieru/NRI-authoring-Backend/install" TYPE PROGRAM FILES "/home/hcilab/Documents/jieru/NRI-authoring-Backend/build/catkin_generated/installspace/_setup_util.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/hcilab/Documents/jieru/NRI-authoring-Backend/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/hcilab/Documents/jieru/NRI-authoring-Backend/install" TYPE PROGRAM FILES "/home/hcilab/Documents/jieru/NRI-authoring-Backend/build/catkin_generated/installspace/env.sh")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/hcilab/Documents/jieru/NRI-authoring-Backend/install/setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/hcilab/Documents/jieru/NRI-authoring-Backend/install" TYPE FILE FILES "/home/hcilab/Documents/jieru/NRI-authoring-Backend/build/catkin_generated/installspace/setup.bash")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/hcilab/Documents/jieru/NRI-authoring-Backend/install/setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/hcilab/Documents/jieru/NRI-authoring-Backend/install" TYPE FILE FILES "/home/hcilab/Documents/jieru/NRI-authoring-Backend/build/catkin_generated/installspace/setup.sh")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/hcilab/Documents/jieru/NRI-authoring-Backend/install/setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/hcilab/Documents/jieru/NRI-authoring-Backend/install" TYPE FILE FILES "/home/hcilab/Documents/jieru/NRI-authoring-Backend/build/catkin_generated/installspace/setup.zsh")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/hcilab/Documents/jieru/NRI-authoring-Backend/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/hcilab/Documents/jieru/NRI-authoring-Backend/install" TYPE FILE FILES "/home/hcilab/Documents/jieru/NRI-authoring-Backend/build/catkin_generated/installspace/.rosinstall")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/hcilab/Documents/jieru/NRI-authoring-Backend/build/gtest/cmake_install.cmake")
  include("/home/hcilab/Documents/jieru/NRI-authoring-Backend/build/kinova-ros/kinova_bringup/cmake_install.cmake")
  include("/home/hcilab/Documents/jieru/NRI-authoring-Backend/build/kinova-ros/kinova_control/cmake_install.cmake")
  include("/home/hcilab/Documents/jieru/NRI-authoring-Backend/build/kinova-ros/kinova_gazebo/cmake_install.cmake")
  include("/home/hcilab/Documents/jieru/NRI-authoring-Backend/build/mico_therbligs/cmake_install.cmake")
  include("/home/hcilab/Documents/jieru/NRI-authoring-Backend/build/rail_manipulation_msgs/cmake_install.cmake")
  include("/home/hcilab/Documents/jieru/NRI-authoring-Backend/build/kinova-ros/kinova_msgs/cmake_install.cmake")
  include("/home/hcilab/Documents/jieru/NRI-authoring-Backend/build/kinova-ros/kinova_driver/cmake_install.cmake")
  include("/home/hcilab/Documents/jieru/NRI-authoring-Backend/build/kinova-ros/kinova_demo/cmake_install.cmake")
  include("/home/hcilab/Documents/jieru/NRI-authoring-Backend/build/kinova-ros/kinova_moveit/inverse_kinematics_plugins/ikfast/j2n6s300_ikfast/cmake_install.cmake")
  include("/home/hcilab/Documents/jieru/NRI-authoring-Backend/build/kinova-ros/kinova_moveit/inverse_kinematics_plugins/ikfast/j2s7s300_ikfast/cmake_install.cmake")
  include("/home/hcilab/Documents/jieru/NRI-authoring-Backend/build/kinova-ros/kinova_moveit/inverse_kinematics_plugins/ikfast/m1n6s300_ikfast/cmake_install.cmake")
  include("/home/hcilab/Documents/jieru/NRI-authoring-Backend/build/kinova-ros/kinova_moveit/kinova_arm_moveit_demo/cmake_install.cmake")
  include("/home/hcilab/Documents/jieru/NRI-authoring-Backend/build/kinova-ros/kinova_description/cmake_install.cmake")
  include("/home/hcilab/Documents/jieru/NRI-authoring-Backend/build/kinova-ros/kinova_moveit/robot_configs/j2n6s300_moveit_config/cmake_install.cmake")
  include("/home/hcilab/Documents/jieru/NRI-authoring-Backend/build/kinova-ros/kinova_moveit/robot_configs/j2s7s300_moveit_config/cmake_install.cmake")
  include("/home/hcilab/Documents/jieru/NRI-authoring-Backend/build/kinova-ros/kinova_moveit/robot_configs/m1n6s300_moveit_config/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/hcilab/Documents/jieru/NRI-authoring-Backend/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
