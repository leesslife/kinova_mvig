#include "ros/ros.h"
#include "std_msgs/String.h"
#include <sstream>
#include <iostream>

#include <opencv2/opencv.hpp>
#include <opencv2/aruco.hpp>
#include <opencv2/calib3d/calib3d.hpp>
#include "opencv2/core/core.hpp"
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>

#include <eigen3/Eigen/Core>
#include <eigen3/Eigen/Geometry>
#include <opencv2/core/eigen.hpp>
#include <realscene_cam_opt.hpp>

#include <kinovasev/realsense.h>

using namespace std;
using namespace cv;
using namespace Eigen;

class BiCodeDetector
{
public:
    enum EigenOpType{StartH_OP,EndH_OP};
    enum DictionaryType{E66_250,E66_100,E55_100};
    BiCodeDetector();
    BiCodeDetector(double markerlength,DictionaryType type);
    void initEigen(EigenOpType);
    int getBiCodeEigen();
     //检测出的字典的
    int idS,idE;
    Matrix4d H_S,H_E;

private:
    //实际长度，单位是m
    double markerlength;
    CameraOpt_mivg mvig;
    //内参
    cv::Mat intrinsics;
    //矫正因子
    cv::Mat distCoeffs;
    //字典
    cv::Ptr<cv::aruco::Dictionary> dictionary;
   
};

BiCodeDetector::BiCodeDetector(){}

BiCodeDetector::BiCodeDetector(double markerlength,DictionaryType type)
{
    this->dictionary=cv::aruco::getPredefinedDictionary(cv::aruco::DICT_6X6_250);
    this->markerlength=markerlength;
    rs2_intrinsics mvig_intrinsics=mvig.getIntrinsics(CameraOpt_mivg::DepthIntrinsics,CameraOpt_mivg::DepthToColor);
    this->intrinsics=(Mat_<double>(3,3)<<
                    mvig_intrinsics.fx,0.0,mvig_intrinsics.ppx,
                    0.0,mvig_intrinsics.fy,mvig_intrinsics.ppy,
                    0.0,    0.0      ,1             );
    this->distCoeffs=(cv::Mat_<double>(5,1)<<mvig_intrinsics.coeffs[0],mvig_intrinsics.coeffs[1],mvig_intrinsics.coeffs[2],mvig_intrinsics.coeffs[3],mvig_intrinsics.coeffs[4]);
    this->initEigen(StartH_OP);
    this->initEigen(EndH_OP);
}

void BiCodeDetector::initEigen(EigenOpType initT)
{
    if(initT==StartH_OP)
    {
        this->idS=-1;
        this->H_S<<1.0,   0.0,   0.0,  0.0,
                   0.0,   1.0,   0.0,  0.0,
                   0.0,   0.0,   1.0,  0.0,
                   0.0,   0.0,   0.0,  1.0;
    }
    if(initT==EndH_OP)
    {
        this->idE=-1;
        this->H_E<<1.0,   0.0,   0.0,  0.0,
                   0.0,   1.0,   0.0,  0.0,
                   0.0,   0.0,   1.0,  0.0,
                   0.0,   0.0,   0.0,  1.0;
    }
}


int BiCodeDetector::getBiCodeEigen()
{
    
    std::vector<int> ids;
    std::vector<std::vector<cv::Point2f>> corners;
    cv::Mat imageCopy,gray,gray_binary;
    
    std::vector<cv::Mat> MVector=this->mvig.getCamerFrame(CameraOpt_mivg::DepthToColor);
    MVector[0].copyTo(imageCopy);

    cv::cvtColor(imageCopy,gray,COLOR_BGR2GRAY);
    cv::threshold(gray,gray_binary, 50,240, cv::THRESH_BINARY|THRESH_OTSU);
    
    cv::aruco::detectMarkers(gray_binary,dictionary,corners,ids);//检测靶标*/
    
    if(ids.size()==0)
    {
        this->initEigen(StartH_OP);
        this->initEigen(EndH_OP);
        
        return 0;
    }
    else if(ids.size()==1)
    {
        if(ids[0]==1)
        {
            std::vector<cv::Vec3d> rvecs,tvecs;
            cv::aruco::estimatePoseSingleMarkers(corners, markerlength, intrinsics, distCoeffs, rvecs, tvecs);//求解旋转矩阵rvecs和平移矩阵tvecs
            cv::Mat rmat;
            Rodrigues(rvecs[0],rmat);
            Eigen::Matrix3d rotation_matrix3d;
            cv2eigen(rmat,rotation_matrix3d);
            Matrix4d HMat;
            HMat.block(0,0,3,3)=rotation_matrix3d;

            HMat(0,3)=(double)tvecs[0][0];
            HMat(1,3)=(double)tvecs[0][1];
            HMat(2,3)=(double)tvecs[0][2];
            HMat(3,0)=(double)0.0;
            HMat(3,1)=(double)0.0;
            HMat(3,2)=(double)0.0;
            HMat(3,3)=(double)1.0;

            this->H_S=HMat;
            this->idS=1;
            cout<<HMat<<std::endl;
            this->initEigen(EndH_OP);
        }
        if(ids[0]==2)
        {
            std::vector<cv::Vec3d> rvecs,tvecs;
            cv::aruco::estimatePoseSingleMarkers(corners, markerlength, intrinsics, distCoeffs, rvecs, tvecs);//求解旋转矩阵rvecs和平移矩阵tvecs
            cv::Mat rmat;
            Rodrigues(rvecs[0],rmat);
            Eigen::Matrix3d rotation_matrix3d;
            cv2eigen(rmat,rotation_matrix3d);
            Matrix4d HMat;
            HMat.block(0,0,3,3)=rotation_matrix3d;

            HMat(0,3)=(double)tvecs[0][0];
            HMat(1,3)=(double)tvecs[0][1];
            HMat(2,3)=(double)tvecs[0][2];
            HMat(3,0)=(double)0.0;
            HMat(3,1)=(double)0.0;
            HMat(3,2)=(double)0.0;
            HMat(3,3)=(double)1.0;

            this->H_E=HMat;
            this->idE=2;
            cout<<HMat<<std::endl;
            this->initEigen(StartH_OP);
        }
        return 1;
    }
    else if(ids.size()==2)
    {
        for(int i=0;i<ids.size();i++)
        {
            if(ids[i]==1)
            {
                std::vector<cv::Vec3d> rvecs,tvecs;
                cv::aruco::estimatePoseSingleMarkers(corners, markerlength, intrinsics, distCoeffs, rvecs, tvecs);//求解旋转矩阵rvecs和平移矩阵tvecs
                cv::Mat rmat;
                Rodrigues(rvecs[i],rmat);
                Eigen::Matrix3d rotation_matrix3d;
                cv2eigen(rmat,rotation_matrix3d);
                Matrix4d HMat;
                HMat.block(0,0,3,3)=rotation_matrix3d;

                HMat(0,3)=(double)tvecs[i][0];
                HMat(1,3)=(double)tvecs[i][1];
                HMat(2,3)=(double)tvecs[i][2];
                HMat(3,0)=(double)0.0;
                HMat(3,1)=(double)0.0;
                HMat(3,2)=(double)0.0;
                HMat(3,3)=(double)1.0;

                this->H_S=HMat;
                this->idS=1;
                cout<<HMat<<std::endl;
            }
            if(ids[i]==2)
            {
                std::vector<cv::Vec3d> rvecs,tvecs;
                cv::aruco::estimatePoseSingleMarkers(corners, markerlength, intrinsics, distCoeffs, rvecs, tvecs);//求解旋转矩阵rvecs和平移矩阵tvecs
                cv::Mat rmat;
                Rodrigues(rvecs[i],rmat);
                Eigen::Matrix3d rotation_matrix3d;
                cv2eigen(rmat,rotation_matrix3d);
                Matrix4d HMat;
                HMat.block(0,0,3,3)=rotation_matrix3d;

                HMat(0,3)=(double)tvecs[i][0];
                HMat(1,3)=(double)tvecs[i][1];
                HMat(2,3)=(double)tvecs[i][2];
                HMat(3,0)=(double)0.0;
                HMat(3,1)=(double)0.0;
                HMat(3,2)=(double)0.0;
                HMat(3,3)=(double)1.0;

                this->H_E=HMat;
                this->idE=2;
                cout<<HMat<<std::endl;
            }
        }
        return 2;
    }
    else
    {
        this->initEigen(StartH_OP);
        this->initEigen(EndH_OP);
        return 3;
    }
    return -1;
}

int main(int argc,char **argv)
{
    ros::init(argc,argv,"talker");
    ros::NodeHandle n;

    cv::Ptr<cv::aruco::Dictionary> dictionary=cv::aruco::getPredefinedDictionary(cv::aruco::DICT_6X6_250);
    BiCodeDetector BiCode(0.04,BiCodeDetector::E66_250);
    
    ros::Publisher chatter_pub=n.advertise<kinovasev::realsense>("realsence_aruco",1000);
    

    ros::Rate loop_rate(10);

    int count=0;

    while(ros::ok())
    {
        kinovasev::realsense rel;
        BiCode.getBiCodeEigen();
        rel.startid=BiCode.idS;
        rel.endid=BiCode.idE;
        for(int i=0;i<4;i++)
            for(int j=0;j<4;j++)
            {
                rel.startH[i*4+j]=BiCode.H_S(i,j);
                rel.endH[i*4+j]=BiCode.H_E(i,j);
            }
        chatter_pub.publish(rel);
        ros::spinOnce();
        loop_rate.sleep();
        ++count;
    }
    return 0;
}