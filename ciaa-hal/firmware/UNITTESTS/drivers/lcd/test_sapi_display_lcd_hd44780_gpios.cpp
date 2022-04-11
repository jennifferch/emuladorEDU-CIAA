#include <gtest/gtest.h>

#include "drivers/display_lcd_hd44780_gpios.c"
//#include "emscripten.h"

TEST(lcdClear, lcdClear_get_average) {
  EXPECT_EQ(1, lcdClear());
}
 
int main(int argc, char **argv) {
  ::testing::InitGoogleTest(&argc, argv);
  return RUN_ALL_TESTS();
}