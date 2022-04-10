cmake_minimum_required(VERSION 2.8.11)

project(googletest-download NONE)

include(ExternalProject)
ExternalProject_Add(googletest
  GIT_REPOSITORY    https://github.com/google/googletest.git
  GIT_TAG           8bc11c040a1dcbe50c340b21d78175d152dd3837
  SOURCE_DIR        "/home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/googletest-src"
  BINARY_DIR        "/home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/googletest-build"
  CONFIGURE_COMMAND ""
  BUILD_COMMAND     ""
  INSTALL_COMMAND   ""
  TEST_COMMAND      ""
)
