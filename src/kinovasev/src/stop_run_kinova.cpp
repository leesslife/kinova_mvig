#include "ros/ros.h"
#include "geometry_msgs/WrenchStamped.h"
#include <math.h>
#include <kinova_msgs/Stop.h>



void listensorCallback(const geometry_msgs::WrenchStamped& msg)
{
    double fabsx=fabs(msg.wrench.force.x);
    double fabsy=fabs(msg.wrench.force.y);
    double fabsz=fabs(msg.wrench.force.z);
    
    ros::NodeHandle n;
    std::map<std::string,double> map_force_contrain;
    n.getParam("max_force_constrain",map_force_contrain);
    //ROS_INFO("maxxforce:[%f]-------maxyforce:[%f]----------maxzforce:[%f]",map_force_contrain["force_max_x"],map_force_contrain["force_max_y"],map_force_contrain["force_max_z"]);
    if(fabsz>map_force_contrain["force_max_z"]||fabsx>map_force_contrain["force_max_x"]||fabsy>map_force_contrain["force_max_y"])
    {
        ros::ServiceClient client = n.serviceClient<kinova_msgs::Stop>("/j2s7s300_driver/in/stop");
        kinova_msgs::Stop stop;
        if (client.call(stop))
        {
            ROS_INFO("maxxforce:[%f]-------maxyforce:[%f]----------maxzforce:[%f]",map_force_contrain["force_max_x"],map_force_contrain["force_max_y"],map_force_contrain["force_max_z"]);
            ROS_INFO("kinova is stop for too large force,you cat use rosservice /j2s3s700_driver/in/start ,run it!");
        }
    }
}
 
int main(int argc, char **argv)
{
  
    ros::init(argc, argv, "listener");
    ros::NodeHandle n;
    ros::Subscriber sub1 = n.subscribe("/j2s7s300_driver/out/tool_wrench", 1000, listensorCallback);
    ros::spin();
    return 0;
}