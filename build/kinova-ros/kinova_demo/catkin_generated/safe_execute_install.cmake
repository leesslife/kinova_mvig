execute_process(COMMAND "/home/ziye01/lees_ros/kinova_mvig/build/kinova-ros/kinova_demo/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/ziye01/lees_ros/kinova_mvig/build/kinova-ros/kinova_demo/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
