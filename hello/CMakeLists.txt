set(MODULE_NAME hello)

set(HELLO_DIR
    ${CMAKE_CURRENT_SOURCE_DIR}
    CACHE INTERNAL "define an INTERNAL variable"
)

file(GLOB HELLO_INC
    hello.h
)

set(HELLO_SRC
    hello.c
)

#将文件路径转换成目录路径
set(HELLO_INC_DIRS_TEMP "")
foreach(HEADER_FILE ${HELLO_INC})
    get_filename_component(DIR ${HEADER_FILE} DIRECTORY)
    list(APPEND HELLO_INC_DIRS_TEMP ${DIR})
endforeach()
list(REMOVE_DUPLICATES  HELLO_INC_DIRS_TEMP) #去重
set(HELLO_INC_DIRS ${HELLO_INC_DIRS_TEMP}
    CACHE INTERNAL ""
)
message(STATUS "HELLO_INC=${HELLO_INC}")
message(STATUS "HELLO_INC_DIRS=${HELLO_INC_DIRS}")

# add_library(${MODULE_NAME} SHARED hello.c)
# set_target_properties(${MODULE_NAME} PROPERTIES 
#     OUTPUT_NAME "hello"
#     VERSION 1.2
#     SOVERSION 1
#     CLEAN_NO_CUSTOM 1
# )
# target_include_directories(${MODULE_NAME} PRIVATE ${HELLO_DIR})

#静态库
add_library(${MODULE_NAME} STATIC ${HELLO_SRC})
set_target_properties(${MODULE_NAME} PROPERTIES OUTPUT_NAME "hello" PREFIX "")
target_include_directories(${MODULE_NAME} PRIVATE ${HELLO_DIR} ${HELLO_PERSON_DIR} ${HELLO_DOG_DIR})

#确认依赖关系
add_dependencies(${MODULE_NAME} hellodog helloperson)

#链接
#PUBLIC PRIVATE INTERFACE关系，他们三个主要是针对target_include_directories/target_link_libraries/target_link_directories这几个命令
#PUBLIC: 对当前target和依赖此target的其他target都有效。如${CMAKE_SOURCE_DIR}/testlib对${PROJECT_NAME}是有效的
#PRIVATE: 仅对当前target有效，其他target不会继承这些属性。如${HELLO_PERSON_DIR}/${HELLO_DOG_DIR})/${HELLO_DIR}对${PROJECT_NAME}是无效的
#INTERFACE: 对当前target无效，仅对依赖此target的其他target有效。例如，可以作为接口库组合多个静态库，具体如下
# add_library(mylib INTERFACE)
# target_link_libraries(mylib  INTERFACE 
# ${CMAKE_SOURCE_DIR}/testlib/libtesta.a
# ${CMAKE_SOURCE_DIR}/testlib/libtestb.a
# )
# mylib作为一个接口库，它本身不会被编译，但是它的链接依赖会传递给其他目标
target_link_directories(${MODULE_NAME} PUBLIC ${CMAKE_SOURCE_DIR}/testlib)
target_link_libraries(${MODULE_NAME} PRIVATE hellodog helloperson testa testb)

install(FILES ${HELLO_INC}
        DESTINATION inc)
install(FILES ${HELLO_SRC}
        DESTINATION src)
install(TARGETS ${MODULE_NAME} 
        ARCHIVE DESTINATION lib)