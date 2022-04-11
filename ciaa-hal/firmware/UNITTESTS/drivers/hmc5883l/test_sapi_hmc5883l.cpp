#include <gtest/gtest.h>

#include "drivers/sapi_hmc5883l.c"
//#include "emscripten.h"


TEST(hmc5883lRead, hmc5883lRead_get_average) {
   int16_t hmc5883l_x_raw;
   int16_t hmc5883l_y_raw;
   int16_t hmc5883l_z_raw;
  EXPECT_EQ(1, hmc5883lRead(&hmc5883l_x_raw, &hmc5883l_y_raw, &hmc5883l_z_raw ));
}
 
int main(int argc, char **argv) {
  ::testing::InitGoogleTest(&argc, argv);
  return RUN_ALL_TESTS();
}