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
set(HELLO_INC_DIR "")
foreach(HEADER_FILE ${HELLO_INC})
    get_filename_component(DIR ${HEADER_FILE} DIRECTORY)
    list(APPEND HELLO_INC_DIR ${DIR})
endforeach()
list(REMOVE_DUPLICATES  HELLO_INC_DIR) #去重
message(STATUS "HELLO_INC=${HELLO_INC}")
message(STATUS "HELLO_INC_DIR=${HELLO_INC_DIR}")

# add_library(${MODULE_NAME} SHARED hello.c)
# set_target_properties(${MODULE_NAME} PROPERTIES 
#     OUTPUT_NAME "hello"
#     VERSION 1.2
#     SOVERSION 1
#     CLEAN_NO_CUSTOM 1
# )
# target_include_directories(${MODULE_NAME} PRIVATE ${HELLO_DIR})

add_library(${MODULE_NAME} STATIC ${HELLO_SRC})
set_target_properties(${MODULE_NAME} PROPERTIES OUTPUT_NAME "hello" PREFIX "")
target_include_directories(${MODULE_NAME} PRIVATE ${HELLO_DIR} ${HELLO_PERSON_DIR} ${HELLO_DOG_DIR})
target_link_libraries(${MODULE_NAME} PRIVATE hellodog helloperson)

install(FILES ${HELLO_INC}
        DESTINATION inc)
install(FILES ${HELLO_SRC}
        DESTINATION src)
install(TARGETS ${MODULE_NAME} 
        ARCHIVE DESTINATION lib)