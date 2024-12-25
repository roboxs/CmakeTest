cmake_minimum_required(VERSION 3.5)
set(PROJECT_NAME main)
project(${PROJECT_NAME})


#编译选项
set(CMAKE_EXE_LINKER_FLAGS "-Wl,-Map=output.map")
# set(CMAKE_C_FLAGS "-Wall")
#定义全局变量


#编译库
add_subdirectory(dep)
add_subdirectory(hello)


#编译
add_executable(${PROJECT_NAME} main.c)
target_include_directories(${PROJECT_NAME} PRIVATE ${HELLO_DIR} ${HELLO_PERSON_DIR} ${HELLO_DOG_DIR})
target_compile_options(${PROJECT_NAME} PUBLIC -save-temps=obj -Wall -Wconversion)

#链接
target_link_libraries(${PROJECT_NAME} hello helloperson hellodog)

set(CMAKE_INSTALL_PREFIX "${CMAKE_BINARY_DIR}/../install")
message(STATUS "CMAKE_INSTALL_PREFIX = ${CMAKE_INSTALL_PREFIX}")
# install(TARGETS hello main
#     LIBRARY DESTINATION lib
#     RUNTIME DESTINATION bin
# )

install(FILES main.c DESTINATION src)
