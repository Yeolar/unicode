# Copyright 2017 Yeolar

set(UNICU_SRCS
    CharProperty.cpp
    uconv.cpp
    Unicode.cpp
    Utf8StringPiece.cpp
)
add_library(unicu OBJECT ${UNICU_SRCS})
add_dependencies(unicu accelerator)

install(FILES *.h DESTINATION include/unicu)

add_executable(CharPropertyBuilder
    CharPropertyBuilder.cpp
)
target_link_libraries(CharPropertyBuilder unicu_static)
