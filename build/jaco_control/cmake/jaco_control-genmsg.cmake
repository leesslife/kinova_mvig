# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "jaco_control: 1 messages, 0 services")

set(MSG_I_FLAGS "-Ijaco_control:/home/ziye01/lees_ros/kinova_mvig/src/jaco_control/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/noetic/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(jaco_control_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ziye01/lees_ros/kinova_mvig/src/jaco_control/msg/InteractionParams.msg" NAME_WE)
add_custom_target(_jaco_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "jaco_control" "/home/ziye01/lees_ros/kinova_mvig/src/jaco_control/msg/InteractionParams.msg" "geometry_msgs/Vector3:geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(jaco_control
  "/home/ziye01/lees_ros/kinova_mvig/src/jaco_control/msg/InteractionParams.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jaco_control
)

### Generating Services

### Generating Module File
_generate_module_cpp(jaco_control
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jaco_control
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(jaco_control_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(jaco_control_generate_messages jaco_control_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ziye01/lees_ros/kinova_mvig/src/jaco_control/msg/InteractionParams.msg" NAME_WE)
add_dependencies(jaco_control_generate_messages_cpp _jaco_control_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(jaco_control_gencpp)
add_dependencies(jaco_control_gencpp jaco_control_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS jaco_control_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(jaco_control
  "/home/ziye01/lees_ros/kinova_mvig/src/jaco_control/msg/InteractionParams.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jaco_control
)

### Generating Services

### Generating Module File
_generate_module_eus(jaco_control
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jaco_control
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(jaco_control_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(jaco_control_generate_messages jaco_control_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ziye01/lees_ros/kinova_mvig/src/jaco_control/msg/InteractionParams.msg" NAME_WE)
add_dependencies(jaco_control_generate_messages_eus _jaco_control_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(jaco_control_geneus)
add_dependencies(jaco_control_geneus jaco_control_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS jaco_control_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(jaco_control
  "/home/ziye01/lees_ros/kinova_mvig/src/jaco_control/msg/InteractionParams.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jaco_control
)

### Generating Services

### Generating Module File
_generate_module_lisp(jaco_control
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jaco_control
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(jaco_control_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(jaco_control_generate_messages jaco_control_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ziye01/lees_ros/kinova_mvig/src/jaco_control/msg/InteractionParams.msg" NAME_WE)
add_dependencies(jaco_control_generate_messages_lisp _jaco_control_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(jaco_control_genlisp)
add_dependencies(jaco_control_genlisp jaco_control_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS jaco_control_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(jaco_control
  "/home/ziye01/lees_ros/kinova_mvig/src/jaco_control/msg/InteractionParams.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jaco_control
)

### Generating Services

### Generating Module File
_generate_module_nodejs(jaco_control
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jaco_control
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(jaco_control_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(jaco_control_generate_messages jaco_control_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ziye01/lees_ros/kinova_mvig/src/jaco_control/msg/InteractionParams.msg" NAME_WE)
add_dependencies(jaco_control_generate_messages_nodejs _jaco_control_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(jaco_control_gennodejs)
add_dependencies(jaco_control_gennodejs jaco_control_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS jaco_control_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(jaco_control
  "/home/ziye01/lees_ros/kinova_mvig/src/jaco_control/msg/InteractionParams.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jaco_control
)

### Generating Services

### Generating Module File
_generate_module_py(jaco_control
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jaco_control
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(jaco_control_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(jaco_control_generate_messages jaco_control_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ziye01/lees_ros/kinova_mvig/src/jaco_control/msg/InteractionParams.msg" NAME_WE)
add_dependencies(jaco_control_generate_messages_py _jaco_control_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(jaco_control_genpy)
add_dependencies(jaco_control_genpy jaco_control_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS jaco_control_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jaco_control)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jaco_control
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(jaco_control_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(jaco_control_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jaco_control)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jaco_control
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(jaco_control_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(jaco_control_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jaco_control)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jaco_control
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(jaco_control_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(jaco_control_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jaco_control)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jaco_control
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(jaco_control_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(jaco_control_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jaco_control)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jaco_control\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jaco_control
    DESTINATION ${genpy_INSTALL_DIR}
    # skip all init files
    PATTERN "__init__.py" EXCLUDE
    PATTERN "__init__.pyc" EXCLUDE
  )
  # install init files which are not in the root folder of the generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jaco_control
    DESTINATION ${genpy_INSTALL_DIR}
    FILES_MATCHING
    REGEX "${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jaco_control/.+/__init__.pyc?$"
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(jaco_control_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(jaco_control_generate_messages_py sensor_msgs_generate_messages_py)
endif()
