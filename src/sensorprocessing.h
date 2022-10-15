#ifndef SENSORPROCESSING_H
#define SENSORPROCESSING_H

#include <ros/ros.h>
#include "geometry_msgs/Pose"


class ProcessObjects
{
    public:
    {
        ProcessObjects(ros::NodeHandle nh);
        ros::NodeHandle nh_;
    }

    private
    {
        ros::Subscriber sub_;
        ros::Publisher pub_;
        geometry_msgs::Pose object(const std::string obj);
    }
}
//class SensorProcessing
//{
//  //Constructor
//  SensorProcessing();

//  //Deconstructor
//  ~SensorProcessing();
//};

#endif // SENSORPROCESSING_H

