#include <gtest/gtest.h>

#include "drivers/sapi_adc.c"
//#include "emscripten.h"

int MyAdd(int a, int b) {
  return a + b;
}
 
TEST(adcInit, adcInit_get_average) {
  EXPECT_EQ(1, adcInit(1,ADC_ENABLE));
}

TEST(adcRead, adcRead_get_average) {
  EXPECT_EQ(1, adcRead(1,CH1));
}
 
int main(int argc, char **argv) {
  ::testing::InitGoogleTest(&argc, argv);
  return RUN_ALL_TESTS();
}