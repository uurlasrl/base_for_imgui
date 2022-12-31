cmake_minimum_required(VERSION 3.8)
project(base-for-imgui LANGUAGES CXX)
if(${APPLE})
    project(base-for-imgui VERSION 1.0.0.0 LANGUAGES OBJC C CXX)
else()
    project(base-for-imgui VERSION 1.0.0.0 LANGUAGES C CXX)
endif()

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

#find_package(OpenGL REQUIRED)
#include(cmake-procedures/CMakeAddSOIL2.cmake)
include(cmake/CMakeAddGLEW.cmake)
include(cmake/CMakeAddGLOG.cmake)
include(cmake/CMakeAddSDL2.cmake)
include(cmake/CMakeAddSDL2_image.cmake)
#include(cmake/CMakeAddSDL2_mixer.cmake)
include(cmake/CMakeAddGLM.cmake)

if (${WIN32})
    if (${WIN32ACTIVEX})
        include(cmake-procedures/CMakeAddImGuiDX.cmake)
    elseif (${WIN32OPENGL})
        include(cmake/CMakeAddImGuiSDLOpenGL3.cmake)
    endif ()
elseif (${APPLE} OR ${UNIX})
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -pthread")
    include(cmake/CMakeAddImGuiSDLOpenGL3.cmake)
endif ()

if (${WIN32})
    if (${WIN32ACTIVEX})
        set(SOURCE_FILES
                example_win32_directx11/main.cpp
                ${IMGUI_SOURCE_FILES}
                )

        add_executable(${CMAKE_PROJECT_NAME} ${SOURCE_FILES})
        target_include_directories(${CMAKE_PROJECT_NAME} ${IMGUI_INCLUDE_DIRS})

        if (${BUILD_SHARED_LIBS})
            target_link_libraries(${CMAKE_PROJECT_NAME} PRIVATE gdi32 opengl32 imm32 glog::glog libglew_shared glm SDL2::SDL2 SDL2::SDL2main SDL2_image)
        else ()
            target_link_libraries(${CMAKE_PROJECT_NAME} PRIVATE gdi32 opengl32 imm32 glog::glog libglew_static glm SDL2::SDL2 SDL2::SDL2main SDL2_image)
        endif ()
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

