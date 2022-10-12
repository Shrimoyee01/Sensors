cmake_minimum_required(VERSION 3.0.1)
project(41014project2022)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  move_base_msgs
  actionlib
  grasping_msgs
  std_msgs
  rosbag # Needed to rosbag manipulation
  roslib # Needed for ros::package::getPath
  pcl_conversions
  pcl_ros
)

add_executable(Sensors src/main.cpp)
target_link_libraries(Sensors ${catkin_LIBRARIES})



###################################
## catkin specific configuration ##
###################################
## The catkin_package macro generates cmake config files for your package
## Declare things to be passed to dependent projects
## INCLUDE_DIRS: uncomment this if your package contains header files
## LIBRARIES: libraries you create in this project that dependent projects also need
## CATKIN_DEPENDS: catkin_packages dependent projects also need
## DEPENDS: system dependencies of this project that dependent projects also need
catkin_package(
#  INCLUDE_DIRS include
#  LIBRARIES simple_navigation_goals
#  CATKIN_DEPENDS actionlib move_base_msgs roscpp
#  DEPENDS system_lib
)

###########
## Build ##
###########

## Specify additional locations of header files
## Your package locations should be listed before other locations
include_directories(
# include
  ${catkin_INCLUDE_DIRS}
)



