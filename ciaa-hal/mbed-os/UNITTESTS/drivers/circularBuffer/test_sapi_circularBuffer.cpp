#include <gtest/gtest.h>

#include "drivers/sapi_circularBuffer.c"
//#include "emscripten.h"

 
TEST(circularBufferRead, circularBufferRead_get_average) {
  EXPECT_EQ(1, circularBufferRead(CIRCULAR_BUFFER_NORMAL));
}

TEST(circularBufferWrite, circularBufferWrite_get_average) {
  EXPECT_EQ(1, circularBufferWrite(CIRCULAR_BUFFER_FULL));
}
 
int main(int argc, char **argv) {
  ::testing::InitGoogleTest(&argc, argv);
  return RUN_ALL_TESTS();
}