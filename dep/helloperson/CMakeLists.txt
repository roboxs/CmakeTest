set(MODULE_NAME helloperson)

set(HELLO_PERSON_DIR
    ${CMAKE_CURRENT_SOURCE_DIR}
    CACHE INTERNAL "define an INTERNAL variable"
)

set(HELLO_PERSON_INC
    helloperson.h
)

set(HELLO_PERSON_SRC
    helloperson.c
)


add_library(${MODULE_NAME} STATIC ${HELLO_PERSON_SRC})
set_target_properties(${MODULE_NAME} PROPERTIES OUTPUT_NAME "helloperson" PREFIX "")
target_include_directories(${MODULE_NAME} PRIVATE ${HELLO_PERSON_DIR})

install(FILES ${HELLO_PERSON_INC}
        DESTINATION inc)
install(FILES ${HELLO_PERSON_SRC}
        DESTINATION src)
install(TARGETS ${MODULE_NAME} 
        ARCHIVE DESTINATION lib)