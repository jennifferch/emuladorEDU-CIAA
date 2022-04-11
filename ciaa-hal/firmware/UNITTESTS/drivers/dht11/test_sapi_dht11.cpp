#include <gtest/gtest.h>

#include "drivers/sapi_dht11.c"
//#include "emscripten.h"

 
TEST(dht11Read, dht11Read_get_average) {
  float humidity = 0, temperature = 0;
  EXPECT_EQ(1, dht11Read(&humidity, &temperature));
}
 
int main(int argc, char **argv) {
  ::testing::InitGoogleTest(&argc, argv);
  return RUN_ALL_TESTS();
}