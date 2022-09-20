#include <ros/ros.h>
#include <ros/package.h>

#include "gripper.h"
#include "sensorprocessing.h"

//outlining the UI

int main(int argc, char* argv[])
{
  ros::init(argc, argv, "gripper");
  ros::NodeHandle ("~");
  BaicGraspingPerception::BasicGraspingPerception perception_n_planning(n);
  ros::spin();
  return 0;
}
