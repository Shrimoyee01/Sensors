//#include "gripper.h"

//Gripper::Gripper(ros::NodeHandle n) :
//   nh_(n), debug_(false), find_objects_(false)
//{
//  // use_debug: enable/disable output of a cloud containing object points
//  nh_.getParam("use_debug", debug_);

//  // frame_id: frame to transform cloud to (should be XY horizontal)
//  world_frame_ = "base_link";
//  nh_.getParam("frame_id", world_frame_);

//  // Create planner
//  planner_.reset(new ShapeGraspPlanner(nh_));

//  // Create perception
//  segmentation_.reset(new ObjectSupportSegmentation(nh_));

//  // Advertise an action for perception + planning
//  server_.reset(new server_t(nh_, "find_objects",
//                             boost::bind(&BasicGraspingPerception::executeCallback, this, _1),
//                             false));

//  // Publish debugging views
//  if (debug_)
//  {
//    object_cloud_pub_ = nh_.advertise< pcl::PointCloud<pcl::PointXYZRGB> >("object_cloud", 1);
//    support_cloud_pub_ = nh_.advertise< pcl::PointCloud<pcl::PointXYZRGB> >("support_cloud", 1);
//  }

//  // Range filter for cloud
//  range_filter_.setFilterFieldName("z");
//  range_filter_.setFilterLimits(0, 2.5);

//  // Subscribe to head camera cloud
//  cloud_sub_ = nh_.subscribe< pcl::PointCloud<pcl::PointXYZRGB> >("/head_camera/depth_registered/points",
//                                                                   1,
//                                                                   &BasicGraspingPerception::cloudCallback,
//                                                                   this);

//  // Start thread for action
//  server_->start();

//  ROS_INFO("basic_grasping_perception initialized");
//}

/////////////////////////////////////////////////////////////////////////////////////////////////

//void Gripper::cloudCallback(const pcl::PointCloud<pcl::PointXYZRGB>::ConstPtr& cloud)
//{
//  // be lazy
//  if (!find_objects_)
//    return;

//  ROS_DEBUG("Cloud recieved with %d points.", static_cast<int>(cloud->points.size()));

//  // Filter out noisy long-range points
//  pcl::PointCloud<pcl::PointXYZRGB>::Ptr cloud_filtered(new pcl::PointCloud<pcl::PointXYZRGB>);
//  range_filter_.setInputCloud(cloud);
//  range_filter_.filter(*cloud_filtered);
//  ROS_DEBUG("Filtered for range, now %d points.", static_cast<int>(cloud_filtered->points.size()));

//  // Transform to grounded
//  pcl::PointCloud<pcl::PointXYZRGB>::Ptr cloud_transformed(new pcl::PointCloud<pcl::PointXYZRGB>);
//  if (!pcl_ros::transformPointCloud(world_frame_, *cloud_filtered, *cloud_transformed, listener_))
//  {
//    ROS_ERROR("Error transforming to frame %s", world_frame_.c_str());
//    return;
//  }

//  // Run segmentation
//  objects_.clear();
//  supports_.clear();
//  pcl::PointCloud<pcl::PointXYZRGB> object_cloud;
//  pcl::PointCloud<pcl::PointXYZRGB> support_cloud;
//  if (debug_)
//  {
//    object_cloud.header.frame_id = cloud_transformed->header.frame_id;
//    support_cloud.header.frame_id = cloud_transformed->header.frame_id;
//  }
//  segmentation_->segment(cloud_transformed, objects_, supports_, object_cloud, support_cloud, debug_);

//  if (debug_)
//  {
//    object_cloud_pub_.publish(object_cloud);
//    support_cloud_pub_.publish(support_cloud);
//  }

//  // Ok to continue processing
//  find_objects_ = false;
//}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//void Gripper::executeCallback(const grasping_msgs::FindGraspableObjectsGoalConstPtr& goal)
//{
//  grasping_msgs::FindGraspableObjectsResult result;

//  // Get objects
//  find_objects_ = true;
//  ros::Time t = ros::Time::now();
//  while (find_objects_ == true)
//  {
//    ros::Duration(1/50.0).sleep();
//    if (ros::Time::now() - t > ros::Duration(3.0))
//    {
//      find_objects_ = false;
//      server_->setAborted(result, "Failed to get camera data in alloted time.");
//      ROS_ERROR("Failed to get camera data in alloted time.");
//      return;
//    }
//  }

//  // Set object results
//  for (size_t i = 0; i < objects_.size(); ++i)
//  {
//    grasping_msgs::GraspableObject g;
//    g.object = objects_[i];
//    if (goal->plan_grasps)
//    {
//      // Plan grasps for object
//      planner_->plan(objects_[i], g.grasps);
//    }
//    result.objects.push_back(g);
//  }
//  // Set support surfaces
//  result.support_surfaces = supports_;

//  server_->setSucceeded(result, "Succeeded.");
//}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


