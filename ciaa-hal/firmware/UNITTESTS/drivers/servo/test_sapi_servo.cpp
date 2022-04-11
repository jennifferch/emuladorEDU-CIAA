#include <gtest/gtest.h>

#include "drivers/sapi_servo.c"
//#include "emscripten.h"
 
TEST(servoConfig, servoConfig_get_average) {
  EXPECT_EQ(1, servoConfig( 0, SERVO_ENABLE ));
}
 
TEST(servoConfig, servoConfig_get_average) {
  EXPECT_EQ(1, servoWrite( SERVO0, 0));
}

TEST(servoConfig, servoConfig_get_average) {
  EXPECT_EQ(1, servoRead(SERVO0));
}
 
int main(int argc, char **argv) {
  ::testing::InitGoogleTest(&argc, argv);
  return RUN_ALL_TESTS();
}