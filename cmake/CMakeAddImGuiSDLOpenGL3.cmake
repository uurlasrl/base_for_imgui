message(STATUS "INI Modulo ImGui SDL opengl3")


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

set(IMGUI_INCLUDE_DIRS "${IMGUI_DIR}" "${IMGUI_DIR}/backends")

set(IMGUI_SOURCE_FILES
        "${IMGUI_DIR}/imgui.cpp"
        "${IMGUI_DIR}/imgui_demo.cpp"
        "${IMGUI_DIR}/imgui_draw.cpp"
        "${IMGUI_DIR}/imgui_tables.cpp"
        "${IMGUI_DIR}/imgui_widgets.cpp"
        "${IMGUI_DIR}/backends/imgui_impl_sdl.cpp"
        "${IMGUI_DIR}/backends/imgui_impl_opengl3.cpp"
        )

#if(${APPLE})
#    set(IMGUI_LIBRARIES stdc++ glfw "-framework OpenGL" "-framework IOKit" "-framework CoreVideo" "-framework Cocoa" objc)
#elseif(${WIN32})
#    set(IMGUI_LIBRARIES glfw gdi32 opengl32 imm32)
#else() #UNIX
#    set(IMGUI_LIBRARIES glfw OpenGL::GL)
#endif()
message(STATUS "FIN Modulo ImGui SDL opengl3")
