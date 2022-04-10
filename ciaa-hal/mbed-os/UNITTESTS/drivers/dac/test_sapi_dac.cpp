#include <gtest/gtest.h>

#include "drivers/sapi_dac.c"
//#include "emscripten.h"
 
TEST(dacWrite, dacWrite_get_average) {
  EXPECT_EQ(1, dacWrite(1,0));
}
 
int main(int argc, char **argv) {
  ::testing::InitGoogleTest(&argc, argv);
  return RUN_ALL_TESTS();
}