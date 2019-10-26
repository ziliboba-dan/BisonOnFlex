cmake_minimum_required(VERSION 3.1)

# так пишутся комментарии

project(project_name)

include_directories(include)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED on)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Wextra -Werror")

add_executable(bin/main src/main.cpp)

target_link_libraries(main generate/parser.tab.c generate/lex.yy.c)
