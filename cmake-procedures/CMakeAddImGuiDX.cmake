
if(${WIN32})
message(STATUS "INI Modulo ImGui Win32 DirectX11")

set(WLIB_DIR "c:/Program Files (x86)/Windows Kits/10/Lib/10.0.19041.0")
set(WINCLUDE_DIR "C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0")

set(IMGUI_DIR imgui-docking)

#set(glfw_dir "../Libraries/glfw")

find_library(D3D11_LIBRARY d3d11.lib     PATHS     "$ENV{DXSDK_DIR}/Lib/x86" "C:/Program Files (x86)/Microsoft DirectX SDK/Lib/x86"     DOC "The directory where d3d11.lib resides")
find_library(D3DX11_LIBRARY d3dx11.lib     PATHS     "$ENV{DXSDK_DIR}/Lib/x86" "C:/Program Files (x86)/Microsoft DirectX SDK/Lib/x86"     DOC "The directory where d3dx11.lib resides")

message(STATUS "D3DX11_LIBRARY=${D3D11_LIBRARY}")
include_directories( ${IMGUI_DIR} ${IMGUI_DIR}/backends
       # "C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/um"
       # "C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/shared"
        )

set(IMGUI_SOURCE_FILES
        ${IMGUI_DIR}/imgui.cpp
        ${IMGUI_DIR}/imgui_demo.cpp
        ${IMGUI_DIR}/imgui_draw.cpp
        ${IMGUI_DIR}/imgui_tables.cpp
        ${IMGUI_DIR}/imgui_widgets.cpp
        ${IMGUI_DIR}/backends/imgui_impl_win32.cpp
        ${IMGUI_DIR}/backends/imgui_impl_dx11.cpp
        )


    #C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.29.30133\lib\x64
    #C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.29.30133\atlmfc\lib\x64
    

    set(IMGUI_LIBRARIES 
            ${WLIB_DIR}/um/x64/d3d11.lib
            ${WLIB_DIR}/um/x64/Gdi32.lib
            ${WLIB_DIR}/um/x64/Dwmapi.lib
            ${WLIB_DIR}/um/x64/D3DCompiler.lib imm32 user32 kernel32 comctl32 )


message(STATUS "FIN Modulo ImGui Win32 DirectX11")
endif()