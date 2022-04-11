#include <gtest/gtest.h>

#include "drivers/sapi_delay.c"
//#include "emscripten.h"
 
TEST(delayRead, delayRead_get_average) {
  EXPECT_EQ(1, delayRead(1));
}
 
int main(int argc, char **argv) {
  ::testing::InitGoogleTest(&argc, argv);
  return RUN_ALL_TESTS();
}