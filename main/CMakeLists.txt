message(STATUS "INI Modulo main")

#set(SOURCE_FILES
#        main.mm
#        ${IMGUI_SOURCE_FILES}
#        )

set(SOURCE_FILES
        src/corso/main.cpp
        src/corso/Shader.cpp
        #Application.cpp
        ${IMGUI_SOURCE_FILES}
        )

add_executable(${CMAKE_PROJECT_NAME} ${SOURCE_FILES})

target_include_directories(${CMAKE_PROJECT_NAME} PUBLIC src ${IMGUI_INCLUDE_DIRS})

if (${BUILD_SHARED_LIBS})
    target_link_libraries(${CMAKE_PROJECT_NAME} libglew_shared)
else ()
    target_link_libraries(${CMAKE_PROJECT_NAME} libglew_static)
endif ()

target_link_libraries(${CMAKE_PROJECT_NAME} glog::glog glm SDL2::SDL2 SDL2::SDL2main SDL2_image)

if(${WIN32})
    target_link_libraries(${CMAKE_PROJECT_NAME}
            gdi32
            opengl32
            imm32)
elseif(${APPLE})
    target_link_libraries(${CMAKE_PROJECT_NAME}
            stdc++
            "-framework OpenGL"
            "-framework IOKit"
            "-framework CoreVideo"
            "-framework Cocoa"
            objc)
elseif(${UNIX})
    target_link_libraries(${CMAKE_PROJECT_NAME}
            OpenGL::GL)
endif()


configure_file(${CMAKE_CURRENT_SOURCE_DIR}/src/corso/core.vs ${CMAKE_CURRENT_BINARY_DIR}/core.vs COPYONLY)
configure_file(${CMAKE_CURRENT_SOURCE_DIR}/src/corso/core.fragment ${CMAKE_CURRENT_BINARY_DIR}/core.fragment COPYONLY)

file(COPY ${CMAKE_CURRENT_SOURCE_DIR}/images/image1.jpg
        DESTINATION ${CMAKE_CURRENT_BINARY_DIR}/images)
file(COPY ${CMAKE_CURRENT_SOURCE_DIR}/images/image2.png
        DESTINATION ${CMAKE_CURRENT_BINARY_DIR}/images)
file(COPY ${CMAKE_CURRENT_SOURCE_DIR}/images/image3.png
        DESTINATION ${CMAKE_CURRENT_BINARY_DIR}/images)

message(STATUS "FIN Modulo main")




if(${APPLE})
    set(IMGUI_LIBRARIES stdc++  "-framework OpenGL" "-framework IOKit" "-framework CoreVideo" "-framework Cocoa" objc)
elseif(${WIN32})
    set(IMGUI_LIBRARIES  gdi32 opengl32 imm32)
else() #UNIX
    set(IMGUI_LIBRARIES  OpenGL::GL)
endif()



#set(SOURCE_FILES
#        example_glfw_opengl3/main.cpp
#        example_glfw_opengl3/Application.cpp
#        ${IMGUI_SOURCE_FILES}
#        )
#
#add_executable(base-for-imgui ${SOURCE_FILES})
#
#target_link_libraries(base-for-imgui ${IMGUI_LIBRARIES})