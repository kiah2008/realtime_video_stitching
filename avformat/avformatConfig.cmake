if (AVFORMAT_FOUND)
    return()
endif()

set(AVFORMAT_FOUND TRUE) # auto 
set(AVFORMAT_ROOT_DIR "${CMAKE_CURRENT_LIST_DIR}")
set(CMAKE_FIND_LIBRARY_PREFIXES "lib")
set(CMAKE_FIND_LIBRARY_SUFFIXES ".so" ".a")

FIND_PATH(AVFORMAT_INCLUDE_DIR avformat.h PATHS "${AVFORMAT_ROOT_DIR}/lib/include" NO_DEFAULT_PATH REQUIRED) 
mark_as_advanced(AVFORMAT_INCLUDE_DIR) # show entry in cmake-gui

FIND_LIBRARY(AVFORMAT_LIBRARY libavformat.so PATHS "${AVFORMAT_ROOT_DIR}/lib" NO_DEFAULT_PATH) 
mark_as_advanced(AVFORMAT_LIBRARY) # show entry in cmake-gui

set(AVFORMAT_INCLUDE_DIRS ${AVFORMAT_INCLUDE_DIR} )
set(AVFORMAT_LIBRARIES ${AVFORMAT_LIBRARY} )

# cmake entry will be saved to build/CMakeCache.txt 

message( "AVFORMAT-config.cmake " ${AVFORMAT_ROOT_DIR})