# Copyright 2017 Yeolar

set(UNICU_TEST_SRCS
    CharPropertyTest.cpp
    UnicodeTest.cpp
)

foreach(test_src ${UNICU_TEST_SRCS})
    get_filename_component(test_name ${test_src} NAME_WE)
    set(test unicu_${test_name})
    add_executable(${test} ${test_src})
    target_link_libraries(${test} ${GTEST_BOTH_LIBRARIES} unicu_static)
    add_test(${test} ${test} CONFIGURATIONS ${CMAKE_BUILD_TYPE})
endforeach()

execute_process(
    COMMAND ln -fs "${PROJECT_SOURCE_DIR}/unicu/test/char.pecker.def"
                   "${PROJECT_BINARY_DIR}/unicu/test/char.pecker.def"
)
