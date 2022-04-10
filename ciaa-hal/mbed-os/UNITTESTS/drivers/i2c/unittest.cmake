
####################
# UNIT TESTS
####################

# Add test specific include paths

set(unittest-sources
  ../targets/TARGET_SIMULATOR/gpio_api.c
)

set(unittest-test-sources
  drivers/gpio/test_sapi_gpio.cpp
)
