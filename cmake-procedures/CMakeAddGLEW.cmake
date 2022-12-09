message(STATUS "INI Modulo glew in ${CMAKE_CURRENT_LIST_DIR}")

set(GLEW_USE_STATIC_LIBS ON)

if (${WIN32})
    if (EXISTS ${CMAKE_SOURCE_DIR}/../../Libraries/glew-2.1.0)
        set(GLEW_DIR "${CMAKE_SOURCE_DIR}/../../Libraries/glew-2.1.0")
    elseif (EXISTS ${CMAKE_SOURCE_DIR}/../Libraries/glew-2.1.0)
        set(GLEW_DIR "${CMAKE_SOURCE_DIR}/../Libraries/glew-2.1.0")
    else ()
        message(FATAL_ERROR "missing library glew-2.1.0")
    endif ()
    set(GLEW_USE_STATIC_LIBS ON)
    list(APPEND CMAKE_PREFIX_PATH "${GLEW_DIR}")
    find_package(GLEW REQUIRED)

elseif (${APPLE} OR ${UNIX})
    find_package(GLEW REQUIRED)
endif ()

include_directories(${GLEW_INCLUDE_DIRS})

message(STATUS "include directories for GLEW: ${GLEW_INCLUDE_DIRS}")
message(STATUS "libraries to link against: GLEW: ${GLEW_LIBRARIES}")
message(STATUS "libraries to link against shared GLEW: ${GLEW_SHARED_LIBRARIES}")
message(STATUS "libraries to link against static GLEW: ${GLEW_STATIC_LIBRARIES}")
message(STATUS "true if GLEW has been found and can be used ${GLEW_FOUND}")
message(STATUS "GLEW version: ${GLEW_VERSION}:${GLEW_VERSION_MAJOR}.${GLEW_VERSION_MINOR}.${GLEW_VERSION_MICRO}")

message(STATUS "FIN Modulo glew")