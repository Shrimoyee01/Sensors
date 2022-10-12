//#ifndef GRIPPER_H
//#define GRIPPER_H

//#include <ros/ros.h>
//#include <ros/package.h>
//#include <actionlib/server/simple_action_server.h>
//#include <tf/transform_listener.h>

//#include <simple_grasping/object_support_segmentation.h>
//#include <simple_grasping/shape_grasp_planner.h>
//#include <grasping_msgs/FindGraspableObjectsAction.h>

//#include <pcl_ros/point_cloud.h>
//#include <pcl_ros/transforms.h>
//#include <pcl_ros/filters/passthrough.h>
//#include <pcl_conversions/pcl_conversions.h>


////change names and fix plz
//namespace simple_grasping
//{

///**
// *  \brief ROS wrapper for shape grasp planner + object support segmentation
// */
//class Gripper
//{
//  typedef actionlib::SimpleActionServer<grasping_msgs::FindGraspableObjectsAction> server_t;

//public:
//  Gripper(ros::NodeHandle n);

//private:
//  void cloudCallback(const pcl::PointCloud<pcl::PointXYZRGB>::ConstPtr& cloud);

//  void executeCallback(const grasping_msgs::FindGraspableObjectsGoalConstPtr& goal);

//  ros::NodeHandle nh_;

//  bool debug_;

//  tf::TransformListener listener_;
//  std::string world_frame_;

//  bool find_objects_;
//  std::vector<grasping_msgs::Object> objects_;
//  std::vector<grasping_msgs::Object> supports_;

//  ros::Subscriber cloud_sub_;
//  ros::Publisher object_cloud_pub_;
//  ros::Publisher support_cloud_pub_;

//  boost::shared_ptr<ShapeGraspPlanner> planner_;
//  boost::shared_ptr<ObjectSupportSegmentation> segmentation_;

//  boost::shared_ptr<server_t> server_;

//  pcl::PassThrough<pcl::PointXYZRGB> range_filter_;
//};

//}  // namespace simple_grasping


//#endif // GRIPPER_H
