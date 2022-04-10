/* mbed Microcontroller Library
 * Copyright (c) 2006-2013 ARM Limited
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
#ifndef SAPI_H
#define SAPI_H


#include "platform/mbed_toolchain.h"
#include "platform/platform.h"
#include "platform/mbed_application.h"

// Useful C libraries
#include <math.h>
#include <time.h>

// mbed Debug libraries
#include "platform/mbed_error.h"
#include "platform/mbed_interface.h"
#include "platform/mbed_assert.h"
#include "platform/mbed_debug.h"

// ciaa libraries
#include "sapi_datatypes.h"
#include "sapi_peripheral_map.h"

#include "drivers/sapi_board.h"                  // Use clock peripheral
#include "drivers/sapi_tick.h"                   // Use Systick peripheral
#include "drivers/sapi_gpio.h"                   // Use GPIO peripherals
#include "drivers/sapi_uart.h"                   // Use UART peripherals
#include "drivers/sapi_adc.h"                    // Use ADC0 peripheral
#include "drivers/sapi_dac.h"                    // Use DAC peripheral
#include "drivers/sapi_i2c.h"                    // Use I2C0 peripheral
#include "drivers/sapi_spi.h"                    // Use SPI0 peripheral
#include "drivers/sapi_rtc.h"                    // Use RTC peripheral
#include "drivers/sapi_sleep.h"                  // Use ARM ASM instructions
#include "drivers/sapi_cyclesCounter.h"          // Use ARM Debug Registers
#include "drivers/sapi_usb_device.h"

// High Level drivers

#include "drivers/sapi_stdio.h"                  // Use sapi_uart module
#include "drivers/sapi_print.h"                  // Use sapi_uart module
#include "drivers/sapi_debugPrint.h"             // Use sapi_print module
#include "drivers/sapi_consolePrint.h"           // Use sapi_print module

#include "sapi_convert.h"                // Use <string.h>

#include "drivers/sapi_delay.h"                  // Use sapi_tick module
#include "drivers/sapi_pwm.h"                    // Use sapi_sct and sapi_gpio modules
#include "drivers/sapi_circularBuffer.h"         // It has no dependencies

#include "drivers/sapi_button.h"                 // Use sapi_gpio module

// External Peripheral Drivers
#include "drivers/sapi_7_segment_display.h"      // Use sapi_gpio and sapi_delay modules
#include "drivers/sapi_keypad.h"                 // Use sapi_gpio and sapi_delay modules
#include "peripherals/dht11_temp_humidity/sapi_dht11.h"             // Use sapi_gpio peripheral
#include "peripherals/lcd/display_lcd_hd44780_gpios.h"             // Use sapi_gpio peripheral
#include "drivers/sapi_servo.h"                  // Use sapi_gpio modules and sapi_timer
#include "drivers/sapi_rgb.h"                            // Use TIMER peripheral

#include "drivers/sapi_esp8266.h"                // Use sapi_uart module

#include "drivers/sapi_magnetometer_hmc5883l.h"  // Use sapi_i2c module
#include "drivers/sapi_magnetometer_qmc5883l.h"  // Use sapi_i2c module
#include "drivers/sapi_imu_mpu9250.h"            // Use sapi_i2c module
#include "drivers/sapi_imu_mpu60X0.h"            // Use sapi_i2c module
#include "drivers/sapi_eeprom24xx1025.h"         // Use sapi_i2c module

#include "drivers/sapi_ultrasonic_hcsr04.h"      //


// mbed Internal components
#include "drivers/Timer.h"
#include "drivers/Ticker.h"
#include "drivers/Timeout.h"

#include "drivers/LowPowerTimer.h"
#include "platform/LocalFileSystem.h"
#include "drivers/InterruptIn.h"
#include "platform/mbed_wait_api.h"
#include "hal/sleep_api.h"
#include "platform/mbed_power_mgmt.h"
#include "platform/mbed_rtc_time.h"
#include "platform/mbed_poll.h"
#include "platform/ATCmdParser.h"
#include "platform/FileSystemHandle.h"
#include "platform/FileHandle.h"
#include "platform/DirHandle.h"
#include "platform/CriticalSectionLock.h"
#include "platform/DeepSleepLock.h"
#include "platform/mbed_stats.h"

// mbed Non-hardware components
#include "platform/Callback.h"
#include "platform/FunctionPointer.h"
#include "platform/ScopedLock.h"

using namespace sapi;
using namespace std;

#endif