set(MODULE_NAME hello)

set(HELLO_DIR
    ${CMAKE_CURRENT_SOURCE_DIR}
    CACHE INTERNAL "define an INTERNAL variable"
)

# add_library(${MODULE_NAME} SHARED hello.c)
# set_target_properties(${MODULE_NAME} PROPERTIES 
#     OUTPUT_NAME "hello"
#     VERSION 1.2
#     SOVERSION 1
#     CLEAN_NO_CUSTOM 1
# )
# target_include_directories(${MODULE_NAME} PRIVATE ${HELLO_DIR})

add_library(${MODULE_NAME} STATIC hello.c)
set_target_properties(${MODULE_NAME} PROPERTIES OUTPUT_NAME "hello" PREFIX "")
target_include_directories(${MODULE_NAME} PRIVATE ${HELLO_DIR})

install(FILES hello.h DESTINATION inc)
install(TARGETS ${MODULE_NAME} 
        ARCHIVE DESTINATION lib)