message(STATUS "INI Modulo main")

#set(SOURCE_FILES
#        main.mm
#        ${IMGUI_SOURCE_FILES}
#        )

set(SOURCE_FILES
        main.cpp
        Application.cpp
        ${IMGUI_SOURCE_FILES}
        )

add_executable(${CMAKE_PROJECT_NAME} ${SOURCE_FILES})

# specify which libraries to connect
# target_link_libraries(program ${METAL})
# target_link_libraries(program ${FOUNDATION})
# target_link_libraries(program ${QUARTZCORE})

target_link_libraries(${CMAKE_PROJECT_NAME} ${IMGUI_LIBRARIES})

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