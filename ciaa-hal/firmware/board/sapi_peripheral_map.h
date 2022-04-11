/* Copyright 2015, Eric Pernia.
 * Copyright 2016, Ian Olivieri.
 * Copyright 2016, Eric Pernia.
 * All rights reserved.
 *
 * This file is part sAPI library for microcontrollers.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice,
 *    this list of conditions and the following disclaimer.
 *
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 *    this list of conditions and the following disclaimer in the documentation
 *    and/or other materials provided with the distribution.
 *
 * 3. Neither the name of the copyright holder nor the names of its
 *    contributors may be used to endorse or promote products derived from this
 *    software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
 * LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
 * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
 * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
 * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 */

/* Date: 2015-09-23 */

#ifndef _SAPI_PERIPHERALMAP_H_
#define _SAPI_PERIPHERALMAP_H_

/*==================[inclusions]=============================================*/

#include "base/sapi_datatypes.h"

/*==================[typedef]================================================*/

/* ----- Begin Pin Init Structs NXP LPC4337 ----- */

typedef struct {
   int8_t port;
   int8_t pin;
} pinInitLpc4337_t;

typedef struct {
   uint8_t lpcScuPort;
   uint8_t lpcScuPin;
   uint8_t lpcScuFunc;
} lpc4337ScuPin_t;

/* ------ End Pin Init Structs NXP LPC4337 ------ */


/* ------- Begin EDU-CIAA-NXP Peripheral Map ------ */

/* Defined for sapi_gpio.h */

#define BOARD edu_ciaa_nxp
/*
typedef enum {

   // Configure GPIO pins for each board

   #if (BOARD == ciaa_nxp)
      DOUT0_C = -3, DOUT1_C = -3, DOUT2_C = -3, DOUT3_C = -3, DIN_COM = -3, 
      VCC = -2, VIN_24V = -2, VOUT_24V = -2,
      GND = -1, GNDA0 = -1, GNDA1 = -1, GND0 = -1, GND1 = -1, GND2 = -1, GND3 = -1, 
      // Born digital inputs
      I0   = 0, I1   = 1, DI2  = 2, I3   = 3, I4   = 4, I5   = 5, I6   = 6, I7   = 7,
      DI0  = 0, DI1  = 1, DI3  = 3, DI4  = 4, DI5  = 5, DI6  = 6, DI7  = 7,
      DIN0 = 0, DIN1 = 1, DIN2 = 2, DIN3 = 3, DIN4 = 4, DIN5 = 5, DIN6 = 6, DIN7 = 7,
      // Born digital outputs
      Q0    = 8, Q1    = 9, Q2    = 10, Q3    = 11, Q4    = 12, Q5    = 13, Q6    = 14, Q7    = 15,
      DO0   = 8, DO1   = 9, DO2   = 10, DO3   = 11, DO4   = 12, DO5   = 13, DO6   = 14, DO7   = 15,
      DOUT0 = 8, DOUT1 = 9, DOUT2 = 10, DOUT3 = 11, DOUT4 = 12, DOUT5 = 13, DOUT6 = 14, DOUT7 = 15,
      // P12 header
      GPIO0 = 16, GPIO1 = 17, GPIO2 = 18, GPIO3 = 19, GPIO7 = 20, GPIO8 = 21, 
      // P14 header
      SPI_MISO = 22, SPI_MOSI = 23, SPI_CS = 23,
      //#error CIAA-NXP
   #elif (BOARD == edu_ciaa_nxp)
      VCC = -2, GND = -1,
      // P1 headere
      T_FIL1,    T_COL2,    T_COL0,    T_FIL2,      T_FIL3,  T_FIL0,     T_COL1,
      CAN_TD,    CAN_RD,    RS232_TXD, RS232_RXD,
      // P2 header
      GPIO8,     GPIO7,     GPIO5,     GPIO3,       GPIO1,
      LCD1,      LCD2,      LCD3,      LCDRS,       LCD4,
      SPI_MISO,
      ENET_TXD1, ENET_TXD0, ENET_MDIO, ENET_CRS_DV, ENET_MDC, ENET_TXEN, ENET_RXD1,
      GPIO6,     GPIO4,     GPIO2,     GPIO0,
      LCDEN,
      SPI_MOSI,
      ENET_RXD0,
      // Switches
      // 36   37     38     39
      TEC1,  TEC2,  TEC3,  TEC4,
      // Leds
      // 40   41     42     43     44     45
      LEDR,  LEDG,  LEDB,  LED1,  LED2,  LED3,
      //#error EDU-CIAA-NXP
   #else
      #error BOARD not supported yet!
   #endif
} gpioMap_t; */

typedef enum {
    VCC = -2, GND = -1,
    P0_0, P0_1, P0_2, P0_3, P0_4, P0_5, P0_6, P0_7, P0_8, P0_9, P0_10, P0_11, P0_12, P0_13, P0_14, P0_15, P0_16, P0_17, P0_18, P0_19, P0_20, P0_21, P0_22, P0_23, P0_24, P0_25, P0_26, P0_27, P0_28, P0_29, P0_30, P0_31,
    P1_0, P1_1, P1_2, P1_3, P1_4, P1_5, P1_6, P1_7, P1_8, P1_9, P1_10, P1_11, P1_12, P1_13, P1_14, P1_15, P1_16, P1_17, P1_18, P1_19, P1_20, P1_21, P1_22, P1_23, P1_24, P1_25, P1_26, P1_27, P1_28, P1_29, P1_30, P1_31,
    P2_0, P2_1, P2_2, P2_3, P2_4, P2_5, P2_6, P2_7, P2_8, P2_9, P2_10, P2_11, P2_12, P2_13, P2_14, P2_15, P2_16, P2_17, P2_18, P2_19, P2_20, P2_21, P2_22, P2_23, P2_24, P2_25, P2_26, P2_27, P2_28, P2_29, P2_30, P2_31,
    P3_0, P3_1, P3_2, P3_3, P3_4, P3_5, P3_6, P3_7, P3_8, P3_9, P3_10, P3_11, P3_12, P3_13, P3_14, P3_15, P3_16, P3_17, P3_18, P3_19, P3_20, P3_21, P3_22, P3_23, P3_24, P3_25, P3_26, P3_27, P3_28, P3_29, P3_30, P3_31,
    P4_0, P4_1, P4_2, P4_3, P4_4, P4_5, P4_6, P4_7, P4_8, P4_9, P4_10, P4_11, P4_12, P4_13, P4_14, P4_15, P4_16, P4_17, P4_18, P4_19, P4_20, P4_21, P4_22, P4_23, P4_24, P4_25, P4_26, P4_27, P4_28, P4_29, P4_30, P4_31,

     // 36   37     38     39
      TEC1 = 36,  TEC2 = 37,  TEC3 = 38,  TEC4 = 39,
      // 40   41     42     43     44     45
      //LEDR,  LEDG,  LEDB,  LED1,  LED2,  LED3,
       DI0  = 0, DI1  = 1, DI3  = 3, DI4  = 4, DI5  = 5, DI6  = 6, DI7  = 7,
       DO0   = 8, DO1   = 9, DO2   = 10, DO3   = 11, DO4   = 12, DO5   = 13, DO6   = 14, DO7   = 15,  DI2  = 2,
       GPIO0 = 16, GPIO1 = 17, GPIO2 = 18, GPIO3 = 19, GPIO7 = 20, GPIO8 = 21, 
       BUTTON1 = 1337, // hope this is not used yet
       
    // mbed DIP Pin Names
    p5 = P0_9,
    p6 = P0_8,
    p7 = P0_7,
  //  p8 = P0_6,
    p9 = P0_0,
    p10 = P0_1,
  //  p11 = P0_18,
    p12 = P0_17,
    p13 = P0_15,
    p14 = P0_16,
    p15 = P0_23,
    p16 = P0_24,
    p17 = P0_25,
    p18 = P0_26,
    p19 = P1_30,
    p20 = P1_31,
    p21 = P2_5,
    p22 = P2_4,
    p23 = P2_3,
    p24 = P2_2,
    p25 = P2_1,
    p26 = P2_0,
    p27 = P0_11,
    p28 = P0_10,
    p29 = P0_5,
    p30 = P0_4,

   NC = (int)0xFFFFFFFF,
     
    I2C_SCL1 = p10,
    I2C_SDA1 = p9,
    I2C_SCL2 = p27, // pin used by application board
    I2C_SDA2 = p28, // pin used by application board
    I2C_SCL = I2C_SCL2,
    I2C_SDA = I2C_SDA2,

   #ifdef MCB1700
      LED1 = P1_28,
      LED2 = P1_29,
      LED3 = P1_31,
      LED4 = P2_2,
   #else
      LED1 = P1_18,
      LED2 = P1_20,
      LED3 = P1_21,
      LED4 = P1_23,
   #endif
      USBTX = P0_2,
      USBRX = P0_3,
      LEDR  = 40,  
      LEDG  = 41,  
      LEDB  = 42
} gpioMap_t;

// Configure GPIO pins for each board

#if (BOARD == ciaa_nxp)
   #define BTN                 DI7
   #define LED                 DO7
#elif (BOARD == edu_ciaa_nxp)
   #define BTN                 TEC1
   #define LED                 LEDB
#else
   #error BOARD not supported yet!
#endif
#define CIAA_BOARD_BUTTON   BTN
#define CIAA_BOARD_LED      LED

/* Defined for sapi_adc.h */
typedef enum {
	#if (BOARD == ciaa_nxp)
	   AIN0 = 0, // AIN0 =   2 ADC0_1/ADC1_1
	   AIN1 = 1, // AIN1 = 143 ADC0_2/ADC1_2
	   AIN2 = 2, // AIN2 = 139 ADC0_3/ADC1_3
	   AIN3 = 3, // AIN3 = 138 ADC0_4/ADC1_4
	   AI0 = 0,  // AIN0 =   2 ADC0_1/ADC1_1
	   AI1 = 1,  // AIN1 = 143 ADC0_2/ADC1_2
	   AI2 = 2,  // AIN2 = 139 ADC0_3/ADC1_3
	   AI3 = 3,  // AIN3 = 138 ADC0_4/ADC1_4
	#elif (BOARD == edu_ciaa_nxp)
	   CH1 = 0, // CH1 =   2 ADC0_1/ADC1_1
	   CH2 = 1, // CH2 = 143 ADC0_2/ADC1_2
	   CH3 = 2, // CH3 = 139 ADC0_3/ADC1_3
	#else
	   #error BOARD not supported yet!
	#endif
} adcMap_t;

/* Defined for sapi_dac.h */
typedef enum {
	#if (BOARD == ciaa_nxp)
		AO  = 0,
		AO0 = 0,
		AOUT = 0,
		DAC  = 0,
		DAC0 = 0,
	#elif (BOARD == edu_ciaa_nxp)
		DAC  = 0,
		DAC0 = 0,
	#else
	   #error BOARD not supported yet!
	#endif
} dacMap_t;

/* Defined for sapi_uart.h */
// Note that:
// - If use UART_GPIO you can't use UART_485 and vice versa.
// - If use UART_USB you can't use UART_ENET and vice versa.
typedef enum {
	#if (BOARD == ciaa_nxp)
	   UART_485  = 1, // Hardware UART0 via RS_485 A, B and GND Borns
					  // Hardware UART1 not routed
	   UART_USB  = 3, // Hardware UART2 via USB DEBUG port
	   UART_232  = 5, // Hardware UART3 via 232_RX and 232_tx pins on header P1
	#elif (BOARD == edu_ciaa_nxp)
	   UART_GPIO = 0, // Hardware UART0 via GPIO1(TX), GPIO2(RX) pins on header P0
	   UART_485  = 1, // Hardware UART0 via RS_485 A, B and GND Borns
		// Hardware UART1 not routed
	   UART_USB  = 3, // Hardware UART2 via USB DEBUG port
	   UART_ENET = 4, // Hardware UART2 via ENET_RXD0(TX), ENET_CRS_DV(RX) pins on header P0
	   UART_232  = 5, // Hardware UART3 via 232_RX and 232_tx pins on header P1
	#else
	   #error BOARD not supported yet!
	#endif
   UART_MAXNUM,
} uartMap_t;

/*Defined for sapi_timer.h*/
//NOTE: if servo is enable (servoInit used) the only available timer to use is TIMER0
typedef enum {
   TIMER0, TIMER1, TIMER2, TIMER3
} timerMap_t;
typedef enum {
   TIMERCOMPAREMATCH0, TIMERCOMPAREMATCH1, TIMERCOMPAREMATCH2, TIMERCOMPAREMATCH3
} timerCompareMatch_t;

/*Defined for sapi_sct.h*/
// NOTE: CTOUT11 has no SCT mode associated, so it can't be used!
// NOTE: if pwm is enable (pwmInit used) there will be no sct channels available
typedef enum {
   CTOUT0, CTOUT1, CTOUT2, CTOUT3, CTOUT4, CTOUT5, CTOUT6, CTOUT7, CTOUT8,
   CTOUT9, CTOUT10, CTOUT11, CTOUT12, CTOUT13
} sctMap_t;

/*Defined for sapi_pwm.h*/
typedef enum {
   PWM0, PWM1, PWM2, PWM3, PWM4, PWM5, PWM6, PWM7, PWM8, PWM9, PWM10
} pwmMap_t;

/*Defined for sapi_servo.h*/
typedef enum {
   SERVO0, SERVO1, SERVO2, SERVO3, SERVO4, SERVO5, SERVO6, SERVO7, SERVO8
} servoMap_t;

/*Defined for sapi_i2c.h*/
/* Comment because already defined in "i2c_18xx_43xx.h"*/
/*
typedef enum{
   I2C0 // TODO: Add support for I2C1
} i2cMap_t;
*/
typedef uint8_t i2cMap_t;

typedef enum {
   SPI0
} spiMap_t;

/*==================[end of file]============================================*/
#endif /* _SAPI_PERIPHERALMAP_H_ */
