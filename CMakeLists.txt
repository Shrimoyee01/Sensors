cmake_minimum_required(VERSION 3.0.1)
project(sensors_project2_fetchrobotgrasping)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  grasping_msgs
  std_msgs
  rosbag # Needed to rosbag manipulation
  roslib # Needed for ros::package::getPath
  pcl_conversions
  pcl_ros
)

## System dependencies are found with CMake's conventions
#find_package(Boost REQUIRED COMPONENTS system signals)
find_package(Eigen3 REQUIRED)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wno-deprecated -Wdeprecated-declarations")
set(CMAKE_CXX_FLAGS "-std=c++11 ${CMAKE_CXX_FLAGS}")
message ( STATUS " CMake C++ FLAGS ${CMAKE_CXX_FLAGS}")

###################################
## catkin specific configuration ##
###################################
## The catkin_package macro generates cmake config files for your package
## Declare things to be passed to dependent projects
## INCLUDE_DIRS: uncomment this if you package contains header files
## LIBRARIES: libraries you create in this project that dependent projects also need
## CATKIN_DEPENDS: catkin_packages dependent projects also need
## DEPENDS: system dependencies of this project that dependent projects also need
catkin_package(
    #  INCLUDE_DIRS include
    #  LIBRARIES drawing_tools
#  CATKIN_DEPENDS roscpp sensor_msgs std_msgs
#  DEPENDS system_lib
)

###########
## Build ##
###########


# Specify additional locations of header files
# Your package locations should be listed before other locations
include_directories(
  include
  src
  ${catkin_INCLUDE_DIRS}
  ${EIGEN3_INCLUDE_DIR}
)

## Declare a C++ library
add_library(${PROJECT_NAME}_processes gripper.cpp sensorprocessing.cpp)

## Declare a C++ executable
add_executable(${PROJECT_NAME}_test main.cpp)

# Add cmake target dependencies of the executable
# This enforces generating messages before building these executables
add_dependencies(${PROJECT_NAME}_test ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})

# Specify libraries to link a library or executable target against
target_link_libraries(${PROJECT_NAME}_test ${catkin_LIBRARIES})

#############
## Testing ##
#############
## Add gtest based cpp test target and link libraries
#catkin_add_gtest(${PROJECT_NAME}_test test/utest.cpp)
#if(TARGET ${PROJECT_NAME}_test)
#   target_link_libraries(${PROJECT_NAME}_test ${catkin_LIBRARIES} ${PROJECT_NAME}_laserprocessing )
#   message (STATUS " catkin_LIBRARIES ${catkin_LIBRARIES}")
#endif()

