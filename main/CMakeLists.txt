message(STATUS "INI Modulo main")

#set(SOURCE_FILES
#        main.mm
#        ${IMGUI_SOURCE_FILES}
#        )

set(SOURCE_FILES
        src/corso/main_back.cpp
        src/corso/Shader.cpp
        #Application.cpp
        ${IMGUI_SOURCE_FILES}
        )

add_executable(${CMAKE_PROJECT_NAME} ${SOURCE_FILES})

target_include_directories(${CMAKE_PROJECT_NAME} PRIVATE src)


if(${WIN32})
    target_link_libraries(${CMAKE_PROJECT_NAME}  ${IMGUI_LIBRARIES} ${GLEW_LIBRARIES} soil2)
elseif(${APPLE} OR ${UNIX})
    target_link_libraries(${CMAKE_PROJECT_NAME}  ${IMGUI_LIBRARIES} GLEW::GLEW soil2)
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





#set(SOURCE_FILES
#        example_glfw_opengl3/main.cpp
#        example_glfw_opengl3/Application.cpp
#        ${IMGUI_SOURCE_FILES}
#        )
#
#add_executable(base-for-imgui ${SOURCE_FILES})
#
#target_link_libraries(base-for-imgui ${IMGUI_LIBRARIES})