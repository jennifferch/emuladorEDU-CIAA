#include <gtest/gtest.h>

#include "drivers/sapi_hmc5883l.c"
//#include "emscripten.h"


TEST(hmc5883lRead, hmc5883lRead_get_average) {
  EXPECT_EQ(1, hmc5883lRead(1,2,3));
}
 
int main(int argc, char **argv) {
  ::testing::InitGoogleTest(&argc, argv);
  return RUN_ALL_TESTS();
}