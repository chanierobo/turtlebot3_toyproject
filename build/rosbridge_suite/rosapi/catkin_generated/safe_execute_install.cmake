execute_process(COMMAND "/home/chanie/catkin_ws/build/rosbridge_suite/rosapi/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/chanie/catkin_ws/build/rosbridge_suite/rosapi/catkin_generated/python_distutils_install.sh) returned error code ")
endif()