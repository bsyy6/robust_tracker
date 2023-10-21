if(BUILD_TESTING)
    add_executable(my_test robust_follower_test.cpp)
    target_link_libraries(my_test PRIVATE 
    gtest_main
    robust_tracker
    )
    include(GoogleTest)
    gtest_discover_tests(my_test)
endif()