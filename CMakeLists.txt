cmake_minimum_required(VERSION 3.8)
project(base-for-imgui LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)

if(${WIN32})
    include(imgui-cmake/CMakeAddImGuiDX.cmake)
elseif(${APPLE} OR ${UNIX})
include(imgui-cmake/CMakeAddImGuiGlfwOpenGL3.cmake)
add_subdirectory(../Libraries/glog glog)
endif()


if(${WIN32})
    set(SOURCE_FILES
            example_win32_directx11/main.cpp
            ${IMGUI_SOURCE_FILES}
            )
elseif(${APPLE} OR ${UNIX})
    set(SOURCE_FILES
        example_glfw_opengl3/main.cpp
        example_glfw_opengl3/Application.cpp
        ${IMGUI_SOURCE_FILES}
        )
endif()

add_executable(base-for-imgui ${SOURCE_FILES})

target_link_libraries(base-for-imgui ${IMGUI_LIBRARIES})
