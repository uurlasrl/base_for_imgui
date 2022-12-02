cmake_minimum_required(VERSION 3.8)
project(base-for-imgui)

set(CMAKE_CXX_STANDARD 17)


include(imgui-cmake/CMakeAddImGuiGlfwOpenGL3.cmake)

add_subdirectory(../Libraries/glog glog)

set(SOURCE_FILES
        example_glfw_opengl3/main.cpp
        example_glfw_opengl3/Application.cpp
        ${IMGUI_SOURCE_FILES}
        )

add_executable(base-for-imgui ${SOURCE_FILES})

target_link_libraries(base-for-imgui ${IMGUI_LIBRARIES})
