
if(${WIN32})
    message(STATUS "INI Modulo ImGui Win32 DirectX12")

    set(IMGUI_DIR imgui-docking)

    #set(glfw_dir "../Libraries/glfw")

    include_directories( ${IMGUI_DIR} ${IMGUI_DIR}/backends)
    #/I "%WindowsSdkDir%Include\um" /I "%WindowsSdkDir%Include\shared"

    set(IMGUI_SOURCE_FILES
            ${IMGUI_DIR}/imgui.cpp
            ${IMGUI_DIR}/imgui_demo.cpp
            ${IMGUI_DIR}/imgui_draw.cpp
            ${IMGUI_DIR}/imgui_tables.cpp
            ${IMGUI_DIR}/imgui_widgets.cpp
            ${IMGUI_DIR}/backends/imgui_impl_win32.cpp
            ${IMGUI_DIR}/imgui_impl_dx12.cpp
            )

    if(${APPLE})
        set(IMGUI_LIBRARIES stdc++ glfw "-framework OpenGL" "-framework IOKit" "-framework CoreVideo" "-framework Cocoa" objc)
    elseif(${WIN32})
        set(IMGUI_LIBRARIES glfw gdi32 opengl32 imm32)
    else() #UNIX
        set(IMGUI_LIBRARIES glfw OpenGL::GL)
    endif()
    message(STATUS "FIN Modulo ImGui Win32 DirectX12")
endif()