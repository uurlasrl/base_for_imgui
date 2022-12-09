cmake_minimum_required(VERSION 3.8)
project(base-for-imgui)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -pthread")


include(cmake-procedures/CMakeAddImGuiGlfwOpenGL3.cmake)

add_subdirectory(../Libraries/glog glog)

add_subdirectory(main)

#set(SOURCE_FILES
#        example_glfw_opengl3/main.cpp
#        example_glfw_opengl3/Application.cpp
#        ${IMGUI_SOURCE_FILES}
#        )
#
#add_executable(base-for-imgui ${SOURCE_FILES})
#
#target_link_libraries(base-for-imgui ${IMGUI_LIBRARIES})
