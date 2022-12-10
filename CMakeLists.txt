cmake_minimum_required(VERSION 3.8)
project(base-for-imgui LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -pthread")

include(cmake-procedures/CMakeAddGLEW.cmake)

include(cmake-procedures/CMakeAddSOIL2.cmake)

if (${WIN32})
    if (${WIN32ACTIVEX})
        include(cmake-procedures/CMakeAddImGuiDX.cmake)
    elseif (${WIN32OPENGL})
        include(cmake-procedures/CMakeAddImGuiGlfwOpenGL3.cmake)
    endif ()
elseif (${APPLE} OR ${UNIX})
    include(cmake-procedures/CMakeAddImGuiGlfwOpenGL3.cmake)
    add_subdirectory(../Libraries/glog glog)
endif ()


if (${WIN32})
    if (${WIN32ACTIVEX})
        set(SOURCE_FILES
                example_win32_directx11/main.cpp
                ${IMGUI_SOURCE_FILES}
                )

        add_executable(base-for-imgui ${SOURCE_FILES})
        target_link_libraries(base-for-imgui ${IMGUI_LIBRARIES})
    elseif (${WIN32OPENGL})
        add_subdirectory(main)
    endif ()
elseif (${APPLE} OR ${UNIX})
    add_subdirectory(main)
endif ()


#set(CMAKE_CXX_STANDARD 17)
#
#if(${WIN32})
#    include(imgui-cmake/CMakeAddImGuiDX.cmake)
#elseif(${APPLE} OR ${UNIX})
#include(imgui-cmake/CMakeAddImGuiGlfwOpenGL3.cmake)
#add_subdirectory(../Libraries/glog glog)
#endif()


#if(${WIN32})
#elseif(${APPLE} OR ${UNIX})
#    set(SOURCE_FILES
#        example_glfw_opengl3/main.cpp
#        example_glfw_opengl3/Application.cpp
#        ${IMGUI_SOURCE_FILES}
#        )
#endif()
#

