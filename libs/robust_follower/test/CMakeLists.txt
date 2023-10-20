cmake_minimum_required(VERSION 3.0.0)

set(TEST_PROJECT_NAME
    robust_follower_LibraryTests
)

set(LIBRARY_TESTS_SOURCE
   
)

project(${TEST_PROJECT_NAME})


if (NOT (TARGET gtest AND TARGET gtest_main))
    message(FATAL_ERROR "gtest and gtest_main targets NOT found")
endif()

add_executable(
    unit_tests
    robust_follower_test.cpp
    )

target_link_libraries(${TEST_PROJECT_NAME} 
    gtest 
    gtest_main 
    ${LIBRARY_NAME} # NOTE: This is defined from project above
)
add_test(${TEST_PROJECT_NAME} ${TEST_PROJECT_NAME})