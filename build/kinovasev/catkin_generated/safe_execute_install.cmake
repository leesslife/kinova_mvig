execute_process(COMMAND "/home/ziye01/lees_ros/kinova_ws/build/kinovasev/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/ziye01/lees_ros/kinova_ws/build/kinovasev/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
