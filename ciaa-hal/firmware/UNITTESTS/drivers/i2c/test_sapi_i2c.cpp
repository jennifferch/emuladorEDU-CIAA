#include <gtest/gtest.h>

#include "drivers/sapi_i2c.c"
//#include "emscripten.h"


TEST(AddTest, myapp_get_average) {
  EXPECT_EQ(1, i2cInit(I2C0, 100000));
}
 
int main(int argc, char **argv) {
  ::testing::InitGoogleTest(&argc, argv);
  return RUN_ALL_TESTS();
}