cmake_minimum_required(VERSION 3.13)
project(static_test)

set(CMAKE_CXX_STANDARD 20)

add_executable(static_test main.cpp)
target_link_libraries(static_test -static)
target_link_libraries(static_test ssl crypto)

add_executable(dynamic_test main.cpp)
target_link_libraries(dynamic_test ssl crypto)