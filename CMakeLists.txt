# cmake_minimum_required(VERSION 3.0.1)
# project(41014project2022)

# find_package(catkin REQUIRED COMPONENTS
#   Findcatkin.cmake
#   roscpp
#   move_base_msgs
#   actionlib
#   grasping_msgs
#   std_msgs
#   rosbag # Needed to rosbag manipulation
#   roslib # Needed for ros::package::getPath
#   pcl_conversions
#   pcl_ros
# )

# add_executable(Sensors src/main.cpp)
# target_link_libraries(Sensors ${catkin_LIBRARIES})



# ###################################
# ## catkin specific configuration ##
# ###################################
# ## The catkin_package macro generates cmake config files for your package
# ## Declare things to be passed to dependent projects
# ## INCLUDE_DIRS: uncomment this if your package contains header files
# ## LIBRARIES: libraries you create in this project that dependent projects also need
# ## CATKIN_DEPENDS: catkin_packages dependent projects also need
# ## DEPENDS: system dependencies of this project that dependent projects also need
# catkin_package(
# #  INCLUDE_DIRS include
# #  LIBRARIES simple_navigation_goals
# #  CATKIN_DEPENDS actionlib move_base_msgs roscpp
# #  DEPENDS system_lib
# )

# ###########
# ## Build ##
# ###########

# ## Specify additional locations of header files
# ## Your package locations should be listed before other locations
# include_directories(
# # include
#   ${catkin_INCLUDE_DIRS}
# )



cmake_minimum_required(VERSION 3.0.2)
project(sensors_project)

find_package(catkin REQUIRED COMPONENTS
  message_filters
  message_generation
  roscpp
  sensor_msgs
  std_msgs
  Findcatkin.cmake
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

find_package(Boost REQUIRED COMPONENTS system)

add_message_files(
	FILES
	sensors_msg.msg
)

generate_messages(
	DEPENDENCIES
	sensor_msgs
	std_msgs
)

catkin_package(
#  INCLUDE_DIRS include
#  LIBRARIES sensors_project
	CATKIN_DEPENDS message_filters message_runtime roscpp sensor_msgs std_msgs
#  DEPENDS system_lib
)

include_directories(
# include
  ${catkin_INCLUDE_DIRS}
)

add_executable(sensors_example_node src/sensors_example_node.cpp)
add_dependencies(sensors_example_node ${catkin_EXPORTED_TARGETS})
target_link_libraries(sensors_example_node ${catkin_LIBRARIES})
