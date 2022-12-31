message(STATUS "INI Modulo glm ")

if( EXISTS ${CMAKE_SOURCE_DIR}/../../Libraries/glm )
    set(GLM_DIR "${CMAKE_SOURCE_DIR}/../../Libraries/glm")
elseif( EXISTS ${CMAKE_SOURCE_DIR}/../Libraries/glm )
    set(GLM_DIR "${CMAKE_SOURCE_DIR}/../Libraries/glm")
else()
    message( FATAL_ERROR "missing library glm" )
endif()

add_subdirectory(${GLM_DIR} glm)

message(STATUS "FIN Modulo glm")