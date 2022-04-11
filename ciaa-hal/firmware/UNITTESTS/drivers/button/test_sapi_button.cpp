#include <gtest/gtest.h>

#include "drivers/sapi_button.c"
//#include "emscripten.h"

 
TEST(buttonEventGet, buttonEventGet_get_average) {
  EXPECT_EQ(BUTTON_UP, buttonEventGet(flagUp));
}

TEST(buttonIsUp, buttonIsUp_get_average) {
  EXPECT_EQ(1, buttonIsUp(flagUp));
}

TEST(buttonIsDown, buttonIsDown_get_average) {
  EXPECT_EQ(0, buttonIsDown(flagDown));
}

TEST(buttonInitState, buttonInitState_get_average) {
  EXPECT_EQ(1, buttonInitState(flagDown));
}
 
int main(int argc, char **argv){
  ::testing::InitGoogleTest(&argc, argv);
  return RUN_ALL_TESTS();
}