import numpy as np
from pyquaternion import Quaternion
from controller.read_kinova import mvig_kinova_reader as MR
from scipy.spatial.transform import Rotation as R

class util_tool():
    def __init__(self):
        pass

    def rotateToQuaternion(self,rotateMatrix):
        q = Quaternion(matrix=rotateMatrix)
        #print(q)  # 0.567 +0.412i -0.419j +0.577k
        #print(f"x: {q.x}, y: {q.y}, z: {q.z}, w: {q.w}")
        # x: 0.41198412875061946, y: -0.41923809520381, z: 0.5770317346112972, w: 0.567047506333421
        return np.array([q.x,q.y,q.z,q.w])

    def getCurrent_mat(self):
        mr=MR()
        current_mq_pose=mr.read_tool_pose()
        current_mq=current_mq_pose[3:]
        current_rotate=R.from_quat(current_mq).as_matrix()
        current_mat=np.zeros((4,4),dtype=float)
        current_mat[0:3,0:3]=current_rotate
        current_mat[0,3]=current_mq_pose[0]
        current_mat[1,3]=current_mq_pose[1]
        current_mat[2,3]=current_mq_pose[2]
        current_mat[3,3]=1
        return current_mat

    def H2TForMq(self,current_mat,kinovaH2E,kinovaE2T,z=0.1):
        kinova_H2T=np.matmul(kinovaH2E, kinovaE2T)
        translate=np.array([[1.0 ,0.0 ,0.0 ,0.0],
                            [0.0 ,1.0 ,0.0 ,0.0],
                            [0.0 ,0.0 ,1.0 ,z],
                            [0.0 ,0.0 ,0.0 ,1.0]],dtype=float)
        kinova_H2T1=np.matmul(kinova_H2T,translate)
        rotate= np.array([[1.0 ,0.0 ,0.0 ,0.0],
                        [0.0 ,-1.0 ,0.0 ,0.0],
                        [0.0 ,0.0 ,-1.0 ,0.0],
                        [0.0 ,0.0 ,0.0 ,1.0]],dtype=float)
        kinova_H2T1=np.matmul(kinova_H2T1,rotate)
        kinova_H2TA=np.matmul(current_mat,kinova_H2T1)
        q=self.rotateToQuaternion(rotateMatrix=kinova_H2TA[0:3,0:3])
        pose_mvig_S=[kinova_H2TA[0][3],kinova_H2TA[1][3],kinova_H2TA[2][3],q[0],q[1],q[2],q[3]]
        return pose_mvig_S   # x,y,z,qx,qy,qz,qw