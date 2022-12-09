message(STATUS "INI Modulo glfw3 ")

if( EXISTS ${CMAKE_SOURCE_DIR}/../../Libraries/glfw-3.3.8 )
    set(GLFW_DIR "${CMAKE_SOURCE_DIR}/../../Libraries/glfw-3.3.8")
elseif( EXISTS ${CMAKE_SOURCE_DIR}/../Libraries/glfw-3.3.8 )
    set(GLFW_DIR "${CMAKE_SOURCE_DIR}/../Libraries/glfw-3.3.8")
else()
    message( FATAL_ERROR "missing library glfw-3.3.8" )
endif()

add_subdirectory(${GLFW_DIR} glfw3)

include_directories( ${GLFW_DIR}/include ${GLFW_INCLUDE_DIRS} )

message(STATUS "FIN Modulo glfw3")