# Find unicu
#
#  UNICU_INCLUDE_DIR - where to find unicu/*.
#  UNICU_LIBRARY     - List of libraries when using unicu.
#  UNICU_FOUND       - True if unicu found.

find_package(PkgConfig)
pkg_check_modules(UNICU QUIET unicu)

if(UNICU_INCLUDE_DIR)
  # Already in cache, be silent
  set(UNICU_FIND_QUIETLY TRUE)
endif()

find_path(UNICU_INCLUDE_DIR unicu/unicu-config.h PATHS
    ${PROJECT_BINARY_DIR}/unicu/unicu/include
    ${PROJECT_BINARY_DIR}-deps/unicu/unicu/include)
find_library(UNICU_LIBRARY unicu PATHS
    ${PROJECT_BINARY_DIR}/unicu/unicu/lib
    ${PROJECT_BINARY_DIR}-deps/unicu/unicu/lib)

# handle the QUIETLY and REQUIRED arguments and set UNICU_FOUND to TRUE 
# if all listed variables are TRUE
include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(UNICU DEFAULT_MSG UNICU_LIBRARY UNICU_INCLUDE_DIR)

mark_as_advanced(UNICU_LIBRARY UNICU_INCLUDE_DIR)
