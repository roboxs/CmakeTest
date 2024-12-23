set(MODULE_NAME classtest)

set(CLASSTEST_DIR
    ${CMAKE_CURRENT_SOURCE_DIR}
    CACHE INTERNAL "define an INTERNAL variable"
)

add_library(${MODULE_NAME} SHARED classtest.cpp)
target_include_directories(${MODULE_NAME} PRIVATE ${CLASSTEST_DIR})
