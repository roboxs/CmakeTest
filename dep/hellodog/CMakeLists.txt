set(MODULE_NAME hellodog)

set(HELLO_DOG_DIR
    ${CMAKE_CURRENT_SOURCE_DIR}
    CACHE INTERNAL "define an INTERNAL variable"
)

set(HELLO_DOG_INC
    hellodog.h
)

set(HELLO_DOG_SRC
    hellodog.c
)


add_library(${MODULE_NAME} STATIC ${HELLO_DOG_SRC})
set_target_properties(${MODULE_NAME} PROPERTIES OUTPUT_NAME "hellodog" PREFIX "")
target_include_directories(${MODULE_NAME} PRIVATE ${HELLO_DOG_DIR})

install(FILES ${HELLO_DOG_INC}
        DESTINATION inc)
install(FILES ${HELLO_DOG_SRC}
        DESTINATION src)
install(TARGETS ${MODULE_NAME} 
        ARCHIVE DESTINATION lib)