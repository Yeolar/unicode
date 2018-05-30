# Copyright 2017 Yeolar

file(GLOB UNICU_SRCS *.cpp)
file(GLOB UNICU_HDRS *.h)

add_library(unicu OBJECT ${UNICU_SRCS})

install(FILES ${UNICU_HDRS} DESTINATION include/unicu)

add_executable(CharPropertyBuilder
    CharPropertyBuilder.cpp
)
target_link_libraries(CharPropertyBuilder unicu_static)
