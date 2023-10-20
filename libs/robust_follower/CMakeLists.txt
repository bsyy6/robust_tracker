cmake_minimum_required(VERSION 3.10)

set(LIBRARY_NAME robust_follower)

set(PROJECT_NAME ${LIBRRAY_NAME}_library)


set(LIBRARY_HEADERS_DIR include/${LIBRARY_NAME})
set(LIBRARY_HEADERS ${LIBRARY_HEADERS_DIR}/robust_follower.h)

set(LIBRARY_SOURCES_DIR src)
set(LIBRARY_SOURCES ${LIBRARY_SOURCES_DIR}/robust_follower.cpp)


project(${PROJECT_NAME})

add_library(${LIBRARY_NAME} STATIC
            ${PROJECT_SOURCES}
            ${PROJECT_HEADERS}
            )

target_include_directories( ${LIBRARY_NAME} PRIVATE
    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include/${LIBRARY_NAME}>
    $<INSTALL_INTERFACE:include/${LIBRARY_NAME}>
)

target_include_directories(${LIBRARY_NAME} PUBLIC
    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>
    $<INSTALL_INTERFACE:include>
)

add_subdirectory(test)