message(STATUS "INI Modulo glew ")

if( EXISTS ${CMAKE_SOURCE_DIR}/../../Libraries/glew-2.1.0 )
    set(GLEW_DIR "${CMAKE_SOURCE_DIR}/../../Libraries/glew-2.1.0")
elseif( EXISTS ${CMAKE_SOURCE_DIR}/../Libraries/glew-2.1.0 )
    set(GLEW_DIR "${CMAKE_SOURCE_DIR}/../Libraries/glew-2.1.0")
else()
    message( FATAL_ERROR "missing library glew-2.1.0" )
endif()

include_directories( ${GLEW_DIR}/include)

if(${WIN32})
set(GLEW_INCLUDE_DIRS ${GLEW_DIR}/include)
set(GLEW_LIBRARIES ${GLEW_DIR}/lib/Release/x64/glew32.lib ${GLEW_DIR}/lib/Release/x64/glew32s.lib)
elseif(${APPLE} OR ${UNIX})
endif()

message(STATUS "FIN Modulo glew")