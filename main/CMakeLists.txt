message(STATUS "INI Modulo main")

#set(SOURCE_FILES
#        main.mm
#        ${IMGUI_SOURCE_FILES}
#        )

set(SOURCE_FILES
        main_opengl.cpp
        #Application.cpp
        ${IMGUI_SOURCE_FILES}
        )

add_executable(${CMAKE_PROJECT_NAME} ${SOURCE_FILES})

if(${WIN32})
    target_link_libraries(${CMAKE_PROJECT_NAME}  ${IMGUI_LIBRARIES} ${GLEW_LIBRARIES})
elseif(${APPLE} OR ${UNIX})
    target_link_libraries(${CMAKE_PROJECT_NAME}  ${IMGUI_LIBRARIES} GLEW::GLEW)
endif()

message(STATUS "FIN Modulo main")





#set(SOURCE_FILES
#        example_glfw_opengl3/main.cpp
#        example_glfw_opengl3/Application.cpp
#        ${IMGUI_SOURCE_FILES}
#        )
#
#add_executable(base-for-imgui ${SOURCE_FILES})
#
#target_link_libraries(base-for-imgui ${IMGUI_LIBRARIES})