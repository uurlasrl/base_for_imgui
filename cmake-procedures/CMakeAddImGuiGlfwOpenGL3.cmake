message(STATUS "INI Modulo ImGui glfw opengl3")

if(NOT DEFINED GLFW_DIR)
    message(STATUS "GLFW3 does not exist try to include  ${CMAKE_SOURCE_DIR}/cmake-procedures/CMakeAddGLFW.cmake")
    include(${CMAKE_SOURCE_DIR}/cmake-procedures/CMakeAddGLFW.cmake)
    if(NOT DEFINED GLFW_DIR)
        message( FATAL_ERROR "missing ${CMAKE_SOURCE_DIR}/cmake-procedures/CMakeAddGLFW.cmake" )
    endif()
endif()

if(NOT EXISTS ${CMAKE_SOURCE_DIR}/imgui-docking )
    message( FATAL_ERROR "missing ${CMAKE_SOURCE_DIR}/imgui-docking" )
endif()
set(IMGUI_DIR ${CMAKE_SOURCE_DIR}/imgui-docking)

if(${APPLE})
elseif(${WIN32})
else() #UNIX
    set(OpenGL_GL_PREFERENCE GLVND)
    find_package(OpenGL REQUIRED)
endif()

include_directories( ${IMGUI_DIR} ${IMGUI_DIR}/backends)

set(IMGUI_SOURCE_FILES
        ${IMGUI_DIR}/imgui.cpp
        ${IMGUI_DIR}/imgui_demo.cpp
        ${IMGUI_DIR}/imgui_draw.cpp
        ${IMGUI_DIR}/imgui_tables.cpp
        ${IMGUI_DIR}/imgui_widgets.cpp
        ${IMGUI_DIR}/backends/imgui_impl_glfw.cpp
        ${IMGUI_DIR}/backends/imgui_impl_opengl3.cpp
        )

if(${APPLE})
    set(IMGUI_LIBRARIES stdc++ glfw "-framework OpenGL" "-framework IOKit" "-framework CoreVideo" "-framework Cocoa" objc)
elseif(${WIN32})
    set(IMGUI_LIBRARIES glfw gdi32 opengl32 imm32)
else() #UNIX
    set(IMGUI_LIBRARIES glfw OpenGL::GL)
endif()
message(STATUS "FIN Modulo ImGui glfw opengl3")
