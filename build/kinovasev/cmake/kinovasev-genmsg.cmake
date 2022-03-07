# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "kinovasev: 1 messages, 7 services")

set(MSG_I_FLAGS "-Ikinovasev:/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(kinovasev_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/msg/realsense.msg" NAME_WE)
add_custom_target(_kinovasev_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kinovasev" "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/msg/realsense.msg" ""
)

get_filename_component(_filename "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/srv/kinova_jointvalue.srv" NAME_WE)
add_custom_target(_kinovasev_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kinovasev" "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/srv/kinova_jointvalue.srv" ""
)

get_filename_component(_filename "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/srv/kinova_posevalue.srv" NAME_WE)
add_custom_target(_kinovasev_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kinovasev" "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/srv/kinova_posevalue.srv" ""
)

get_filename_component(_filename "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/srv/kinova_jointvelocity.srv" NAME_WE)
add_custom_target(_kinovasev_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kinovasev" "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/srv/kinova_jointvelocity.srv" ""
)

get_filename_component(_filename "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/srv/kinova_posevelocity.srv" NAME_WE)
add_custom_target(_kinovasev_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kinovasev" "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/srv/kinova_posevelocity.srv" ""
)

get_filename_component(_filename "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/srv/kinova_fingervalue.srv" NAME_WE)
add_custom_target(_kinovasev_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kinovasev" "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/srv/kinova_fingervalue.srv" ""
)

get_filename_component(_filename "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/srv/kinova_wheelchair_pose.srv" NAME_WE)
add_custom_target(_kinovasev_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kinovasev" "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/srv/kinova_wheelchair_pose.srv" ""
)

get_filename_component(_filename "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/srv/kinova_wheelchair_velocity.srv" NAME_WE)
add_custom_target(_kinovasev_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kinovasev" "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/srv/kinova_wheelchair_velocity.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(kinovasev
  "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/msg/realsense.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kinovasev
)

### Generating Services
_generate_srv_cpp(kinovasev
  "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/srv/kinova_jointvalue.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kinovasev
)
_generate_srv_cpp(kinovasev
  "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/srv/kinova_posevalue.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kinovasev
)
_generate_srv_cpp(kinovasev
  "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/srv/kinova_jointvelocity.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kinovasev
)
_generate_srv_cpp(kinovasev
  "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/srv/kinova_posevelocity.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kinovasev
)
_generate_srv_cpp(kinovasev
  "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/srv/kinova_fingervalue.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kinovasev
)
_generate_srv_cpp(kinovasev
  "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/srv/kinova_wheelchair_pose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kinovasev
)
_generate_srv_cpp(kinovasev
  "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/srv/kinova_wheelchair_velocity.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kinovasev
)

### Generating Module File
_generate_module_cpp(kinovasev
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kinovasev
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(kinovasev_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(kinovasev_generate_messages kinovasev_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/msg/realsense.msg" NAME_WE)
add_dependencies(kinovasev_generate_messages_cpp _kinovasev_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/srv/kinova_jointvalue.srv" NAME_WE)
add_dependencies(kinovasev_generate_messages_cpp _kinovasev_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/srv/kinova_posevalue.srv" NAME_WE)
add_dependencies(kinovasev_generate_messages_cpp _kinovasev_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/srv/kinova_jointvelocity.srv" NAME_WE)
add_dependencies(kinovasev_generate_messages_cpp _kinovasev_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/srv/kinova_posevelocity.srv" NAME_WE)
add_dependencies(kinovasev_generate_messages_cpp _kinovasev_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/srv/kinova_fingervalue.srv" NAME_WE)
add_dependencies(kinovasev_generate_messages_cpp _kinovasev_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/srv/kinova_wheelchair_pose.srv" NAME_WE)
add_dependencies(kinovasev_generate_messages_cpp _kinovasev_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/srv/kinova_wheelchair_velocity.srv" NAME_WE)
add_dependencies(kinovasev_generate_messages_cpp _kinovasev_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(kinovasev_gencpp)
add_dependencies(kinovasev_gencpp kinovasev_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS kinovasev_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(kinovasev
  "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/msg/realsense.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kinovasev
)

### Generating Services
_generate_srv_eus(kinovasev
  "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/srv/kinova_jointvalue.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kinovasev
)
_generate_srv_eus(kinovasev
  "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/srv/kinova_posevalue.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kinovasev
)
_generate_srv_eus(kinovasev
  "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/srv/kinova_jointvelocity.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kinovasev
)
_generate_srv_eus(kinovasev
  "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/srv/kinova_posevelocity.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kinovasev
)
_generate_srv_eus(kinovasev
  "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/srv/kinova_fingervalue.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kinovasev
)
_generate_srv_eus(kinovasev
  "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/srv/kinova_wheelchair_pose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kinovasev
)
_generate_srv_eus(kinovasev
  "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/srv/kinova_wheelchair_velocity.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kinovasev
)

### Generating Module File
_generate_module_eus(kinovasev
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kinovasev
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(kinovasev_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(kinovasev_generate_messages kinovasev_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/msg/realsense.msg" NAME_WE)
add_dependencies(kinovasev_generate_messages_eus _kinovasev_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/srv/kinova_jointvalue.srv" NAME_WE)
add_dependencies(kinovasev_generate_messages_eus _kinovasev_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/srv/kinova_posevalue.srv" NAME_WE)
add_dependencies(kinovasev_generate_messages_eus _kinovasev_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/srv/kinova_jointvelocity.srv" NAME_WE)
add_dependencies(kinovasev_generate_messages_eus _kinovasev_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/srv/kinova_posevelocity.srv" NAME_WE)
add_dependencies(kinovasev_generate_messages_eus _kinovasev_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/srv/kinova_fingervalue.srv" NAME_WE)
add_dependencies(kinovasev_generate_messages_eus _kinovasev_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/srv/kinova_wheelchair_pose.srv" NAME_WE)
add_dependencies(kinovasev_generate_messages_eus _kinovasev_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/srv/kinova_wheelchair_velocity.srv" NAME_WE)
add_dependencies(kinovasev_generate_messages_eus _kinovasev_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(kinovasev_geneus)
add_dependencies(kinovasev_geneus kinovasev_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS kinovasev_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(kinovasev
  "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/msg/realsense.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kinovasev
)

### Generating Services
_generate_srv_lisp(kinovasev
  "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/srv/kinova_jointvalue.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kinovasev
)
_generate_srv_lisp(kinovasev
  "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/srv/kinova_posevalue.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kinovasev
)
_generate_srv_lisp(kinovasev
  "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/srv/kinova_jointvelocity.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kinovasev
)
_generate_srv_lisp(kinovasev
  "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/srv/kinova_posevelocity.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kinovasev
)
_generate_srv_lisp(kinovasev
  "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/srv/kinova_fingervalue.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kinovasev
)
_generate_srv_lisp(kinovasev
  "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/srv/kinova_wheelchair_pose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kinovasev
)
_generate_srv_lisp(kinovasev
  "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/srv/kinova_wheelchair_velocity.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kinovasev
)

### Generating Module File
_generate_module_lisp(kinovasev
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kinovasev
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(kinovasev_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(kinovasev_generate_messages kinovasev_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/msg/realsense.msg" NAME_WE)
add_dependencies(kinovasev_generate_messages_lisp _kinovasev_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/srv/kinova_jointvalue.srv" NAME_WE)
add_dependencies(kinovasev_generate_messages_lisp _kinovasev_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/srv/kinova_posevalue.srv" NAME_WE)
add_dependencies(kinovasev_generate_messages_lisp _kinovasev_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/srv/kinova_jointvelocity.srv" NAME_WE)
add_dependencies(kinovasev_generate_messages_lisp _kinovasev_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/srv/kinova_posevelocity.srv" NAME_WE)
add_dependencies(kinovasev_generate_messages_lisp _kinovasev_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/srv/kinova_fingervalue.srv" NAME_WE)
add_dependencies(kinovasev_generate_messages_lisp _kinovasev_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/srv/kinova_wheelchair_pose.srv" NAME_WE)
add_dependencies(kinovasev_generate_messages_lisp _kinovasev_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/srv/kinova_wheelchair_velocity.srv" NAME_WE)
add_dependencies(kinovasev_generate_messages_lisp _kinovasev_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(kinovasev_genlisp)
add_dependencies(kinovasev_genlisp kinovasev_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS kinovasev_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(kinovasev
  "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/msg/realsense.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kinovasev
)

### Generating Services
_generate_srv_nodejs(kinovasev
  "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/srv/kinova_jointvalue.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kinovasev
)
_generate_srv_nodejs(kinovasev
  "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/srv/kinova_posevalue.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kinovasev
)
_generate_srv_nodejs(kinovasev
  "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/srv/kinova_jointvelocity.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kinovasev
)
_generate_srv_nodejs(kinovasev
  "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/srv/kinova_posevelocity.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kinovasev
)
_generate_srv_nodejs(kinovasev
  "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/srv/kinova_fingervalue.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kinovasev
)
_generate_srv_nodejs(kinovasev
  "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/srv/kinova_wheelchair_pose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kinovasev
)
_generate_srv_nodejs(kinovasev
  "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/srv/kinova_wheelchair_velocity.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kinovasev
)

### Generating Module File
_generate_module_nodejs(kinovasev
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kinovasev
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(kinovasev_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(kinovasev_generate_messages kinovasev_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/msg/realsense.msg" NAME_WE)
add_dependencies(kinovasev_generate_messages_nodejs _kinovasev_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/srv/kinova_jointvalue.srv" NAME_WE)
add_dependencies(kinovasev_generate_messages_nodejs _kinovasev_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/srv/kinova_posevalue.srv" NAME_WE)
add_dependencies(kinovasev_generate_messages_nodejs _kinovasev_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/srv/kinova_jointvelocity.srv" NAME_WE)
add_dependencies(kinovasev_generate_messages_nodejs _kinovasev_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/srv/kinova_posevelocity.srv" NAME_WE)
add_dependencies(kinovasev_generate_messages_nodejs _kinovasev_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/srv/kinova_fingervalue.srv" NAME_WE)
add_dependencies(kinovasev_generate_messages_nodejs _kinovasev_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/srv/kinova_wheelchair_pose.srv" NAME_WE)
add_dependencies(kinovasev_generate_messages_nodejs _kinovasev_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/srv/kinova_wheelchair_velocity.srv" NAME_WE)
add_dependencies(kinovasev_generate_messages_nodejs _kinovasev_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(kinovasev_gennodejs)
add_dependencies(kinovasev_gennodejs kinovasev_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS kinovasev_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(kinovasev
  "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/msg/realsense.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kinovasev
)

### Generating Services
_generate_srv_py(kinovasev
  "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/srv/kinova_jointvalue.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kinovasev
)
_generate_srv_py(kinovasev
  "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/srv/kinova_posevalue.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kinovasev
)
_generate_srv_py(kinovasev
  "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/srv/kinova_jointvelocity.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kinovasev
)
_generate_srv_py(kinovasev
  "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/srv/kinova_posevelocity.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kinovasev
)
_generate_srv_py(kinovasev
  "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/srv/kinova_fingervalue.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kinovasev
)
_generate_srv_py(kinovasev
  "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/srv/kinova_wheelchair_pose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kinovasev
)
_generate_srv_py(kinovasev
  "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/srv/kinova_wheelchair_velocity.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kinovasev
)

### Generating Module File
_generate_module_py(kinovasev
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kinovasev
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(kinovasev_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(kinovasev_generate_messages kinovasev_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/msg/realsense.msg" NAME_WE)
add_dependencies(kinovasev_generate_messages_py _kinovasev_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/srv/kinova_jointvalue.srv" NAME_WE)
add_dependencies(kinovasev_generate_messages_py _kinovasev_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/srv/kinova_posevalue.srv" NAME_WE)
add_dependencies(kinovasev_generate_messages_py _kinovasev_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/srv/kinova_jointvelocity.srv" NAME_WE)
add_dependencies(kinovasev_generate_messages_py _kinovasev_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/srv/kinova_posevelocity.srv" NAME_WE)
add_dependencies(kinovasev_generate_messages_py _kinovasev_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/srv/kinova_fingervalue.srv" NAME_WE)
add_dependencies(kinovasev_generate_messages_py _kinovasev_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/srv/kinova_wheelchair_pose.srv" NAME_WE)
add_dependencies(kinovasev_generate_messages_py _kinovasev_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ziye01/lees_ros/kinova_mvig/src/kinovasev/srv/kinova_wheelchair_velocity.srv" NAME_WE)
add_dependencies(kinovasev_generate_messages_py _kinovasev_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(kinovasev_genpy)
add_dependencies(kinovasev_genpy kinovasev_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS kinovasev_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kinovasev)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kinovasev
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(kinovasev_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kinovasev)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kinovasev
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(kinovasev_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kinovasev)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kinovasev
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(kinovasev_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kinovasev)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kinovasev
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(kinovasev_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kinovasev)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kinovasev\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kinovasev
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(kinovasev_generate_messages_py std_msgs_generate_messages_py)
endif()
