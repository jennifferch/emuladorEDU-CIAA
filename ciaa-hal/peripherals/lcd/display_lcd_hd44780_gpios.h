/* mbed library for the mbed Lab Board  128*32 pixel LCD
 * use C12832 controller
 * Copyright (c) 2012 Peter Drescher - DC2PD
 * Released under the MIT License: http://mbed.org/license/mit
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */

#ifndef DISPLAY_LCD_HD44780_GPIOS_H_
#define DISPLAY_LCD_HD44780_GPIOS_H_

#include "emscripten.h"

#include "targets/TARGET_SIMULATOR/PinNames.h"

#include "base/sapi_datatypes.h"
#include "board/sapi_peripheral_map.h"

#include "GraphicsDisplay.h"

/*==================[c]====================================================*/
#ifdef __cplusplus
extern "C" {
#endif

/** optional Defines :
  * #define debug_lcd  1  enable infos to PC_USB
  */

// some defines for the DMA use
#define DMA_CHANNEL_ENABLE      1
#define DMA_TRANSFER_TYPE_M2P   (1UL << 11)
#define DMA_CHANNEL_TCIE        (1UL << 31)
#define DMA_CHANNEL_SRC_INC     (1UL << 26)
#define DMA_MASK_IE             (1UL << 14)
#define DMA_MASK_ITC            (1UL << 15)
#define DMA_SSP1_TX             (1UL << 2)
#define DMA_SSP0_TX             (0)
#define DMA_DEST_SSP1_TX        (2UL << 6)
#define DMA_DEST_SSP0_TX        (0UL << 6)

/** Draw mode
  * NORMAl
  * XOR set pixel by xor the screen
  */
enum {NORMAL,XOR};

/** Bitmap
 */
typedef struct{
    int xSize;
    int ySize;
    int Byte_in_Line;
    char* data;
}Bitmap;

    void lcd_Init( uint16_t lineWidth, uint16_t amountOfLines, uint16_t charWidth, uint16_t charHeight );

    int width();

    int height();

    void pixel(int x, int y,int colour);

    void circle(int x, int y, int r, int colour);

    void fillcircle(int x, int y, int r, int colour);

    void line(int x0, int y0, int x1, int y1, int colour);

    void rect(int x0, int y0, int x1, int y1, int colour);

    void fillrect(int x0, int y0, int x1, int y1, int colour);

    void lcdCursorSet(void);

    void set_contrast(unsigned int o);

    int get_contrast(void);

    void invert(unsigned int o);

    void lcdClear(void);

    void setmode(int mode);

    int columns_d(void);

    int rows_d(void);
   
    int _putc_d(int value);

    void character_d(int x, int y, int c);

    void locate(int x, int y);

    void set_auto_up(unsigned int up);

    int get_auto_up(void);

    void set_font(unsigned char* f);

    void lcdCreateChar(Bitmap bm, int x, int y);

    void _flush();

    void hline(int x0, int x1, int y, int colour);

    void vline(int y0, int y1, int x, int colour);

    void lcd_reset();

    void wr_dat(unsigned char value);

    void wr_cmd(unsigned char value);

    void wr_cnt(unsigned char cmd);

    void lcdSendStringRaw(const char* str);

    void copy_to_lcd(void);

    int printfLCD(const char *format, ...);


/*==================[c++]====================================================*/
#ifdef __cplusplus
}
#endif


#endif
