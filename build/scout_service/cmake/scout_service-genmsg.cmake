# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "scout_service: 4 messages, 0 services")

set(MSG_I_FLAGS "-Iscout_service:/home/shawk/catkin_ws/src/scout_service/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(scout_service_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/shawk/catkin_ws/src/scout_service/msg/RoverList.msg" NAME_WE)
add_custom_target(_scout_service_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "scout_service" "/home/shawk/catkin_ws/src/scout_service/msg/RoverList.msg" ""
)

get_filename_component(_filename "/home/shawk/catkin_ws/src/scout_service/msg/POIVector.msg" NAME_WE)
add_custom_target(_scout_service_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "scout_service" "/home/shawk/catkin_ws/src/scout_service/msg/POIVector.msg" ""
)

get_filename_component(_filename "/home/shawk/catkin_ws/src/scout_service/msg/RoverState.msg" NAME_WE)
add_custom_target(_scout_service_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "scout_service" "/home/shawk/catkin_ws/src/scout_service/msg/RoverState.msg" ""
)

get_filename_component(_filename "/home/shawk/catkin_ws/src/scout_service/msg/RoverPosition.msg" NAME_WE)
add_custom_target(_scout_service_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "scout_service" "/home/shawk/catkin_ws/src/scout_service/msg/RoverPosition.msg" "std_msgs/Header"
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(scout_service
  "/home/shawk/catkin_ws/src/scout_service/msg/RoverList.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/scout_service
)
_generate_msg_cpp(scout_service
  "/home/shawk/catkin_ws/src/scout_service/msg/POIVector.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/scout_service
)
_generate_msg_cpp(scout_service
  "/home/shawk/catkin_ws/src/scout_service/msg/RoverState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/scout_service
)
_generate_msg_cpp(scout_service
  "/home/shawk/catkin_ws/src/scout_service/msg/RoverPosition.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/scout_service
)

### Generating Services

### Generating Module File
_generate_module_cpp(scout_service
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/scout_service
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(scout_service_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(scout_service_generate_messages scout_service_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/shawk/catkin_ws/src/scout_service/msg/RoverList.msg" NAME_WE)
add_dependencies(scout_service_generate_messages_cpp _scout_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shawk/catkin_ws/src/scout_service/msg/POIVector.msg" NAME_WE)
add_dependencies(scout_service_generate_messages_cpp _scout_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shawk/catkin_ws/src/scout_service/msg/RoverState.msg" NAME_WE)
add_dependencies(scout_service_generate_messages_cpp _scout_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shawk/catkin_ws/src/scout_service/msg/RoverPosition.msg" NAME_WE)
add_dependencies(scout_service_generate_messages_cpp _scout_service_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(scout_service_gencpp)
add_dependencies(scout_service_gencpp scout_service_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS scout_service_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(scout_service
  "/home/shawk/catkin_ws/src/scout_service/msg/RoverList.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/scout_service
)
_generate_msg_lisp(scout_service
  "/home/shawk/catkin_ws/src/scout_service/msg/POIVector.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/scout_service
)
_generate_msg_lisp(scout_service
  "/home/shawk/catkin_ws/src/scout_service/msg/RoverState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/scout_service
)
_generate_msg_lisp(scout_service
  "/home/shawk/catkin_ws/src/scout_service/msg/RoverPosition.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/scout_service
)

### Generating Services

### Generating Module File
_generate_module_lisp(scout_service
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/scout_service
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(scout_service_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(scout_service_generate_messages scout_service_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/shawk/catkin_ws/src/scout_service/msg/RoverList.msg" NAME_WE)
add_dependencies(scout_service_generate_messages_lisp _scout_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shawk/catkin_ws/src/scout_service/msg/POIVector.msg" NAME_WE)
add_dependencies(scout_service_generate_messages_lisp _scout_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shawk/catkin_ws/src/scout_service/msg/RoverState.msg" NAME_WE)
add_dependencies(scout_service_generate_messages_lisp _scout_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shawk/catkin_ws/src/scout_service/msg/RoverPosition.msg" NAME_WE)
add_dependencies(scout_service_generate_messages_lisp _scout_service_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(scout_service_genlisp)
add_dependencies(scout_service_genlisp scout_service_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS scout_service_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(scout_service
  "/home/shawk/catkin_ws/src/scout_service/msg/RoverList.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/scout_service
)
_generate_msg_py(scout_service
  "/home/shawk/catkin_ws/src/scout_service/msg/POIVector.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/scout_service
)
_generate_msg_py(scout_service
  "/home/shawk/catkin_ws/src/scout_service/msg/RoverState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/scout_service
)
_generate_msg_py(scout_service
  "/home/shawk/catkin_ws/src/scout_service/msg/RoverPosition.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/scout_service
)

### Generating Services

### Generating Module File
_generate_module_py(scout_service
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/scout_service
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(scout_service_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(scout_service_generate_messages scout_service_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/shawk/catkin_ws/src/scout_service/msg/RoverList.msg" NAME_WE)
add_dependencies(scout_service_generate_messages_py _scout_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shawk/catkin_ws/src/scout_service/msg/POIVector.msg" NAME_WE)
add_dependencies(scout_service_generate_messages_py _scout_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shawk/catkin_ws/src/scout_service/msg/RoverState.msg" NAME_WE)
add_dependencies(scout_service_generate_messages_py _scout_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shawk/catkin_ws/src/scout_service/msg/RoverPosition.msg" NAME_WE)
add_dependencies(scout_service_generate_messages_py _scout_service_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(scout_service_genpy)
add_dependencies(scout_service_genpy scout_service_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS scout_service_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/scout_service)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/scout_service
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(scout_service_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/scout_service)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/scout_service
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(scout_service_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/scout_service)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/scout_service\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/scout_service
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(scout_service_generate_messages_py std_msgs_generate_messages_py)
