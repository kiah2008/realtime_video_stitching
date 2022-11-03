# cmake needs this line
cmake_minimum_required(VERSION 3.22)

# Define project name
project(ffmpeg_test)

# Declare the executable target built from your sources
set(avformat_DIR "${CMAKE_CURRENT_SOURCE_DIR}/avformat")
set(CMAKE_PREFIX_PATH "${CMAKE_CURRENT_SOURCE_DIR}/avformat/lib/ ${CMAKE_CURRENT_SOURCE_DIR}/avformat/lib/include ${CMAKE_PREFIX_PATH}")
find_package(avformat REQUIRED)

message("===${AVFORMAT_INCLUDE_DIRS} - ${AVFORMAT_LIBRARIES}")
# find_library(LIB_AVFORMAT NAMES libavformat avformat PATHS ${CMAKE_CURRENT_SOURCE_DIR}/libs/arm64-v8a/ffmpeg/ NO_DEFAULT_PATH REQUIRED)
link_directories(${CMAKE_CURRENT_SOURCE_DIR}/libs/arm64-v8a/ffmpeg/lib)
add_executable(ffmpeg_test ffmpeg_test.cpp)

target_include_directories(ffmpeg_test PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/libs/arm64-v8a/ffmpeg/include)
# Link your application with OpenCV libraries
target_link_libraries(ffmpeg_test PRIVATE libavformat.so)
# target_link_libraries(ffmpeg_test PRIVATE ${AVFORMAT_LIBRARIES})
