#include <gtest/gtest.h>

#include "drivers/sapi_gpio.c"
//#include "hal/gpio_api.h"
//#include "emscripten.h"

int MyAdd(int a, int b) {
  return a + b;
}
 
TEST(AddTest, myapp_get_average) {
  EXPECT_EQ(1, gpioWrite(1,0));
}
 
int main(int argc, char **argv) {
  ::testing::InitGoogleTest(&argc, argv);
  return RUN_ALL_TESTS();
}