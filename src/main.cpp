//#include <ros/ros.h>
//#include <ros/package.h>

//#include "gripper.h"
//#include "sensorprocessing.h"

#include<ros/ros.h>
#include<move_base_msgs/MoveBaseAction.h>
#include<actionlib/client/simple_action_client.h>

typedef actionlib::SimpleActionClient<move_base_msgs::MoveBaseAction> MoveBaseClient;

int main(int argc, char** argv)

{
  ros::init(argc, argv, "main");

  MoveBaseClient ac("move_base", true);

  while(!ac.waitForServer(ros::Duration(5.0)))
  {
    ROS_INFO("Waitingforthe move_base action server to come up");
  }
  move_base_msgs::MoveBaseGoal goal;

  //we'll send a goal to the robot to move 1 meter forward
  goal.target_pose.header.frame_id = "base_link";
  goal.target_pose.header.stamp = ros::Time::now();

  goal.target_pose.pose.position.x = 1.0;
  goal.target_pose.pose.orientation.w = 1.0;

  ROS_INFO("Sending goal");
  ac.sendGoal(goal);

  ac.waitForResult();

  if(ac.getState() == actionlib::SimpleClientGoalState::SUCCEEDED)
    ROS_INFO("Hooray, the base moved 1 meter forward");
  else
    ROS_INFO("The base failed to move forward 1 meter for some reason");

  return 0;
}




//}




//int main(int argc, char* argv[])
//{
////  ros::init(argc, argv, "gripper");
////  ros::NodeHandle ("~");
////  BasicGraspingPerception::BasicGraspingPerception perception_n_planning(n);
////  ros::spin();
//  return 0;
//}
