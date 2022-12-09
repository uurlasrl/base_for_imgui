message(STATUS "INI Modulo glew in ${CMAKE_CURRENT_LIST_DIR}")


if (${WIN32})
    if (EXISTS ${CMAKE_SOURCE_DIR}/../../Libraries/glew-2.1.0)
        set(GLEW_DIR "${CMAKE_SOURCE_DIR}/../../Libraries/glew-2.1.0")
    elseif (EXISTS ${CMAKE_SOURCE_DIR}/../Libraries/glew-2.1.0)
        set(GLEW_DIR "${CMAKE_SOURCE_DIR}/../Libraries/glew-2.1.0")
    else ()
        message(FATAL_ERROR "missing library glew-2.1.0")
    endif ()

    include_directories(${GLEW_DIR}/include)
    set(GLEW_INCLUDE_DIRS ${GLEW_DIR}/include)
    set(GLEW_LIBRARIES ${GLEW_DIR}/lib/Release/x64/glew32.lib ${GLEW_DIR}/lib/Release/x64/glew32s.lib)
elseif (${APPLE} OR ${UNIX})
    set(GLEW_USE_STATIC_LIBS ON)
    find_package(GLEW)

    message(STATUS "found include ${INCLUDE_DIRECTORIES}")
    message(STATUS "include directories for GLEW: ${GLEW_INCLUDE_DIRS}")
    message(STATUS "libraries to link against: GLEW: ${GLEW_LIBRARIES}")
    message(STATUS "libraries to link against shared GLEW: ${GLEW_SHARED_LIBRARIES}")
    message(STATUS "libraries to link against static GLEW: ${GLEW_STATIC_LIBRARIES}")
    message(STATUS "true if GLEW has been found and can be used ${GLEW_FOUND}")
    message(STATUS "GLEW version: ${GLEW_VERSION}:${GLEW_VERSION_MAJOR}.${GLEW_VERSION_MINOR}.${GLEW_VERSION_MICRO}")
endif ()

message(STATUS "FIN Modulo glew")