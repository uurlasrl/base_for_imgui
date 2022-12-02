message(STATUS "INI Modulo ImGui glfw opengl3")

set(IMGUI_DIR imgui-docking)

if(${APPLE})
    set(glfw_dir "../Libraries/glfw-3.3.8")
elseif(${WIN32})
    set(glfw_dir "../Libraries/glfw")
else() #UNIX
    set(glfw_dir "../Libraries/glfw")
    set(OpenGL_GL_PREFERENCE GLVND)
    find_package(OpenGL REQUIRED)
endif()

add_subdirectory(${glfw_dir} glfw3)

include_directories( ${glfw_dir}/include ${GLFW_INCLUDE_DIRS} ${IMGUI_DIR} ${IMGUI_DIR}/backends)

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
