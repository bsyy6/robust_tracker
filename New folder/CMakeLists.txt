cmake_minimum_required(VERSION 3.16..3.24)
project(try_googletest VERSION 0.0.1
                       DESCRIPTION "Try googletest"
                       LANGUAGES CXX)
# Add subdirectory with external projects' code
include(CTest)
add_subdirectory(external)
add_subdirectory(my_project)