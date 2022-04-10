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

// 13.10.12    initial design
// 25.10.12    add autorefresh of screen
// 25.10.12    add standart font
// 20.12.12    add bitmap graphics

// optional defines :
// #define debug_lcd  1

#include "display_lcd_hd44780_gpios.h"
#include "stdio.h"
#include "Small_7.h"
#include "emscripten.h"
#include <string.h>
#include "stdarg.h"

#define BPP    1       // Bits per pixel


char* font;
int draw_mode;

int orientation;
int char_x;
int char_y;
char buffer[32 * 128];
int contrast;
int auto_up;

PinName _mosi;
PinName _miso;
PinName _sck;


void lock();
void unlock();

void lcd_Init( uint16_t lineWidth, uint16_t amountOfLines, uint16_t charWidth, uint16_t charHeight ){

    _mosi= SPI_MOSI;
    _miso= SPI_MISO;
    _sck= SPI_SCK;

    initGraphicsDisplay("LCD");

    EM_ASM_({
        window.MbedJSHal.Lcd.init($0, $1, $2);
    }, _mosi, _miso, _sck);
    orientation = 1;
    draw_mode = NORMAL;
    char_x = 0;
    lcd_reset();
}


int width()
{
    if (orientation == 0 || orientation == 2) return 32;
    else return 128;
}

int height()
{
    if (orientation == 0 || orientation == 2) return 128;
    else return 32;
}


void invert(unsigned int o)
{
    EM_ASM({
        console.log('invert\n');
    });
}


void set_contrast(unsigned int o)
{
    EM_ASM({
        console.log('set_contrast\n');
    });
}

int get_contrast(void)
{
    return(contrast);
}


void wr_cmd(unsigned char cmd)
{
    /* no-op */
}

// write data to lcd controller

void wr_dat(unsigned char dat)
{
    /* no-op */
}

// reset and init the lcd controller

void lcd_reset()
{
    memset(buffer,0x00,4096);  // clear display buffer

    // dont do this by default. Make the user call
    //claim(stdout);           // redirekt printf to lcd
    locate(0,0);
    set_font((unsigned char*)Small_7);  // standart font

    lcdCursorSet();
}

// set one pixel in buffer

void pixel(int x, int y, int color)
{
    // first check parameter
    if(x > 128 || y > 32 || x < 0 || y < 0) return;

    if(draw_mode == NORMAL) {
        if(color == 0)
            buffer[x + (y * 128)] = 0;
        else
            buffer[x + (y * 128)] = 1;
    } else { // XOR mode
        if(color == 1)
            buffer[x + (y * 128)] ^= 1;
    }
}

// update lcd

void lcdCursorSet(void)
{
    EM_ASM_({
        window.MbedJSHal.Lcd.update_display($0, $1, $2, new Uint8Array(Module.HEAPU8.buffer, $3, 4096));
    }, _mosi, _miso, _sck, buffer);
}


void copy_to_lcd(void)
{
    EM_ASM_({
        window.MbedJSHal.Lcd.update_display($0, $1, $2, new Uint8Array(Module.HEAPU8.buffer, $3, 4096));
    }, _mosi, _miso, _sck, buffer);
}

void lcdClear(void)
{
    memset(buffer,0x00,4096);  // clear display buffer
    lcdCursorSet();
}

void _flush(void)
{
    copy_to_lcd();
}

void line(int x0, int y0, int x1, int y1, int color)
{
    int   dx = 0, dy = 0;
    int   dx_sym = 0, dy_sym = 0;
    int   dx_x2 = 0, dy_x2 = 0;
    int   di = 0;

    dx = x1-x0;
    dy = y1-y0;

    //  if (dx == 0) {        /* vertical line */
    //      if (y1 > y0) vline(x0,y0,y1,color);
    //      else vline(x0,y1,y0,color);
    //      return;
    //  }

    if (dx > 0) {
        dx_sym = 1;
    } else {
        dx_sym = -1;
    }
    //  if (dy == 0) {        /* horizontal line */
    //      if (x1 > x0) hline(x0,x1,y0,color);
    //      else  hline(x1,x0,y0,color);
    //      return;
    //  }

    if (dy > 0) {
        dy_sym = 1;
    } else {
        dy_sym = -1;
    }

    dx = dx_sym*dx;
    dy = dy_sym*dy;

    dx_x2 = dx*2;
    dy_x2 = dy*2;

    if (dx >= dy) {
        di = dy_x2 - dx;
        while (x0 != x1) {

            pixel(x0, y0, color);
            x0 += dx_sym;
            if (di<0) {
                di += dy_x2;
            } else {
                di += dy_x2 - dx_x2;
                y0 += dy_sym;
            }
        }
        pixel(x0, y0, color);
    } else {
        di = dx_x2 - dy;
        while (y0 != y1) {
            pixel(x0, y0, color);
            y0 += dy_sym;
            if (di < 0) {
                di += dx_x2;
            } else {
                di += dx_x2 - dy_x2;
                x0 += dx_sym;
            }
        }
        pixel(x0, y0, color);
    }
    if(auto_up) lcdCursorSet();
}

void rect(int x0, int y0, int x1, int y1, int color)
{

    if (x1 > x0) line(x0,y0,x1,y0,color);
    else  line(x1,y0,x0,y0,color);

    if (y1 > y0) line(x0,y0,x0,y1,color);
    else line(x0,y1,x0,y0,color);

    if (x1 > x0) line(x0,y1,x1,y1,color);
    else  line(x1,y1,x0,y1,color);

    if (y1 > y0) line(x1,y0,x1,y1,color);
    else line(x1,y1,x1,y0,color);

    if(auto_up) lcdCursorSet();
}

void fillrect(int x0, int y0, int x1, int y1, int color)
{
    int l,c,i;
    if(x0 > x1) {
        i = x0;
        x0 = x1;
        x1 = i;
    }

    if(y0 > y1) {
        i = y0;
        y0 = y1;
        y1 = i;
    }

    for(l = x0; l<= x1; l ++) {
        for(c = y0; c<= y1; c++) {
            pixel(l,c,color);
        }
    }
    if(auto_up) lcdCursorSet();
}



void circle(int x0, int y0, int r, int color)
{

    int draw_x0, draw_y0;
    int draw_x1, draw_y1;
    int draw_x2, draw_y2;
    int draw_x3, draw_y3;
    int draw_x4, draw_y4;
    int draw_x5, draw_y5;
    int draw_x6, draw_y6;
    int draw_x7, draw_y7;
    int xx, yy;
    int di;
    //WindowMax();
    if (r == 0) {       /* no radius */
        return;
    }

    draw_x0 = draw_x1 = x0;
    draw_y0 = draw_y1 = y0 + r;
    if (draw_y0 < height()) {
        pixel(draw_x0, draw_y0, color);     /* 90 degree */
    }

    draw_x2 = draw_x3 = x0;
    draw_y2 = draw_y3 = y0 - r;
    if (draw_y2 >= 0) {
        pixel(draw_x2, draw_y2, color);    /* 270 degree */
    }

    draw_x4 = draw_x6 = x0 + r;
    draw_y4 = draw_y6 = y0;
    if (draw_x4 < width()) {
        pixel(draw_x4, draw_y4, color);     /* 0 degree */
    }

    draw_x5 = draw_x7 = x0 - r;
    draw_y5 = draw_y7 = y0;
    if (draw_x5>=0) {
        pixel(draw_x5, draw_y5, color);     /* 180 degree */
    }

    if (r == 1) {
        return;
    }

    di = 3 - 2*r;
    xx = 0;
    yy = r;
    while (xx < yy) {

        if (di < 0) {
            di += 4*xx + 6;
        } else {
            di += 4*(xx - yy) + 10;
            yy--;
            draw_y0--;
            draw_y1--;
            draw_y2++;
            draw_y3++;
            draw_x4--;
            draw_x5++;
            draw_x6--;
            draw_x7++;
        }
        xx++;
        draw_x0++;
        draw_x1--;
        draw_x2++;
        draw_x3--;
        draw_y4++;
        draw_y5++;
        draw_y6--;
        draw_y7--;

        if ( (draw_x0 <= width()) && (draw_y0>=0) ) {
            pixel(draw_x0, draw_y0, color);
        }

        if ( (draw_x1 >= 0) && (draw_y1 >= 0) ) {
            pixel(draw_x1, draw_y1, color);
        }

        if ( (draw_x2 <= width()) && (draw_y2 <= height()) ) {
            pixel(draw_x2, draw_y2, color);
        }

        if ( (draw_x3 >=0 ) && (draw_y3 <= height()) ) {
            pixel(draw_x3, draw_y3, color);
        }

        if ( (draw_x4 <= width()) && (draw_y4 >= 0) ) {
            pixel(draw_x4, draw_y4, color);
        }

        if ( (draw_x5 >= 0) && (draw_y5 >= 0) ) {
            pixel(draw_x5, draw_y5, color);
        }
        if ( (draw_x6 <=width()) && (draw_y6 <= height()) ) {
            pixel(draw_x6, draw_y6, color);
        }
        if ( (draw_x7 >= 0) && (draw_y7 <= height()) ) {
            pixel(draw_x7, draw_y7, color);
        }
    }
    if(auto_up) lcdCursorSet();
}

void fillcircle(int x, int y, int r, int color)
{
    int i,up;
    up = auto_up;
    auto_up = 0;   // off
    for (i = 0; i <= r; i++)
        circle(x,y,i,color);
    auto_up = up;
    if(auto_up) lcdCursorSet();
}

void setmode(int mode)
{
    draw_mode = mode;
}

void locate(int x, int y)
{
    char_x = x;
    char_y = y;
}



int columns_d()
{
    return width() / font[1];
}



int rows_d()
{
    return height() / font[2];
}



int _putc_d(int value)
{
    if (value == '\n') {    // new line
        char_x = 0;
        char_y = char_y + font[2];
        if (char_y >= height() - font[2]) {
            char_y = 0;
        }
    } else {
        character_d(char_x, char_y, value);
        if(auto_up) copy_to_lcd();
    }
    return value;
}

void character_d(int x, int y, int c)
{
    unsigned int hor,vert,offset,bpl,j,i,b;
    unsigned char* zeichen;
    unsigned char z,w;

    if ((c < 31) || (c > 127)) return;   // test char range

    // read font parameter from start of array
    offset = font[0];                    // bytes / char
    hor = font[1];                       // get hor size of font
    vert = font[2];                      // get vert size of font
    bpl = font[3];                       // bytes per line

    if (char_x + hor > width()) {
        char_x = 0;
        char_y = char_y + vert;
        if (char_y >= height() - font[2]) {
            char_y = 0;
        }
    }

    zeichen = &font[((c -32) * offset) + 4]; // start of char bitmap
    w = zeichen[0];                          // width of actual char
    // construct the char into the buffer
    for (j=0; j<vert; j++) {  //  vert line
        for (i=0; i<hor; i++) {   //  horz line
            z =  zeichen[bpl * i + ((j & 0xF8) >> 3)+1];
            b = 1 << (j & 0x07);
            if (( z & b ) == 0x00) {
                pixel(x+i,y+j,0);
            } else {
                pixel(x+i,y+j,1);
            }

        }
    }

    char_x += w;
}


void set_font(unsigned char* f)
{
    font = f;
}

void set_auto_up(unsigned int up)
{
    if(up ) auto_up = 1;
    else auto_up = 0;
}

int get_auto_up(void)
{
    return (auto_up);
}

void lcdCreateChar(Bitmap bm, int x, int y)
{
    int h,v,b;
    char d;

    for(v=0; v < bm.ySize; v++) {   // lines
        for(h=0; h < bm.xSize; h++) { // pixel
            if(h + x > 127) break;
            if(v + y > 31) break;
            d = bm.data[bm.Byte_in_Line * v + ((h & 0xF8) >> 3)];
            b = 0x80 >> (h & 0x07);
            if((d & b) == 0) {
                pixel(x+h,y+v,0);
            } else {
                pixel(x+h,y+v,1);
            }
        }
    }

}

void lcdSendStringRaw(const char* str)
{
   //  buffer[1] = "H"; 
     //buffer[2] = "H"; 

   
}


int printfLCD(const char *format, ...){
        lock();
        va_list arg;
        va_start(arg, format);
 //   #if defined(TARGET_SIMULATOR)
        char buffer[4096] = { 0 };
        int r = vsprintf(buffer, format, arg);
        for (int ix = 0; ix < r; ix++) {
            _putc_d(buffer[ix]);
        }
        _flush();
  /*  #else
        fflush(_file);
        int r = vfprintf(_file, format, arg);
    #endif */
        va_end(arg);
        unlock();
        return r;
}


  void lock()
    {
        // Stub
    }

    /** Release exclusive access to this object.
     */
  void unlock()
    {
        // Stub
    }


