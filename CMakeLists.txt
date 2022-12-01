cmake_minimum_required(VERSION 3.8)
project(base-for-imgui)

set(CMAKE_CXX_STANDARD 17)

set(IMGUI_DIR imgui-docking)
#include_directories(metal-cpp)

#find_package(glfw3 3.3 REQUIRED)
if(${APPLE})
    set(glfw_dir "../Libraries/glfw-3.3.8")
elseif(${WIN32})
    set(glfw_dir "../Libraries/glfw-3.3.8")
else() #UNIX
    set(glfw_dir "../Libraries/glfw-3.3.8")
endif()

add_subdirectory(${glfw_dir} glfw3)


include_directories( ${glfw_dir}/include ${GLFW_INCLUDE_DIRS} ${IMGUI_DIR} ${IMGUI_DIR}/backends)
#/usr/local/Cellar/glfw/3.3.8/include
set(SOURCE_FILES example_glfw_opengl3/main.cpp
        ${IMGUI_DIR}/imgui.cpp
        ${IMGUI_DIR}/imgui_demo.cpp
        ${IMGUI_DIR}/imgui_draw.cpp
        ${IMGUI_DIR}/imgui_tables.cpp
        ${IMGUI_DIR}/imgui_widgets.cpp
        ${IMGUI_DIR}/backends/imgui_impl_glfw.cpp
        ${IMGUI_DIR}/backends/imgui_impl_opengl3.cpp

        )
add_executable(base-for-imgui ${SOURCE_FILES})

if(${APPLE})
    target_link_libraries(base-for-imgui stdc++ glfw "-framework OpenGL" "-framework IOKit" "-framework CoreVideo" "-framework Cocoa" objc)
elseif(${WIN32})
    target_link_libraries(base-for-imgui glfw3 gdi32 opengl32 imm32)
else() #UNIX
    target_link_libraries(base-for-imgui glfw3)
endif()

#stdc++ "-framework Metal" "-framework Foundation" "-framework QuartzCore" objc)