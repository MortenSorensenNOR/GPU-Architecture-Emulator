/* File: Main display driver 
 * Reference from https://stackoverflow.com/questions/64521652/create-xlib-window-with-a-frame-buffer-i-can-draw-directly-and-use-xputimage
 */

#pragma once
#include <stdio.h>
#include <stdlib.h>
#include <X11/Xlib.h>
#include <X11/Xutil.h>
#include <X11/extensions/Xrandr.h>

/**
 * @brief Wrapper class for exposing a framebuffer from X11/Xlib
 */
struct GAEDisplay {
    Display* display;
    Visual* visual;
    Window window;
    Window parent;

    XVisualInfo vinfo;
    XVisualInfo visual_template;
    XVisualInfo* visual_list;
    XSetWindowAttributes attrs;

    XImage* ximage;
    XEvent event;

    int depth;
    int* framebuffer;
    int width, height;
    int nxvisual;

    XGCValues gcv;
    unsigned long gcm;
    GC NormalGC;
};

/**
 * @brief Sets up the GAEDisplay struct for an X11 window
 * @param disp   The GAEDisplay instance to initilize
 * @return Returns 0 for success and 1 for error
 */
int GAEDisplay_init(struct GAEDisplay* disp);

/**
 * @brief Gets the window dimensions of the current selected monitor
 * @param disp      The defualt X11 display
 * @param width     Pointer to the width int to be set
 * @param height    Pointer to the height int to be set
 * @return Returns 0 for success and 1 for error
 */
int GAEDisplay_currentMonitorDimensions(Display* display, int* width, int* height);

/**
 * @brief Sets up the framebuffer for the GAEDisplay struct, uses the current width and height of the display 
 * @param disp   The GAEDisplay struct for which the framebuffer is being set up for
 * @return Returns 0 for success and 1 for error
 */
int GAEDisplay_setFrameBufferSize(struct GAEDisplay* disp);

/**
 * @brief Sets the pixel in the framebuffer at position (x, y) to color.
 * @param disp      The GAEDisplay struct for which the pixel in the framebuffer is to be set
 * @param x         Horizontal index
 * @param y         Vertical index 
 * @param color     8-bit color - RED/GREEN/BLUE
 * @return Returns 0 for success and 1 for error
 */
int GAEDisplay_setPixel(struct GAEDisplay* disp, int x, int y, int color);

/**
 * @brief Main update function for the GAEDisplay. Upon update, the new framebuffer gets displayed
 * @param disp   The GAEDisplay struct being updated
 * @return Returns 0 for success and 1 for error
 */
int GAEDisplay_update(struct GAEDisplay* disp);

/**
 * @brief Clear the GAEDisplay framebuffer.
 * @param disp   The GAEDisplay struct for which the framebuffer is being cleared
 * @return Returns 0 for success and 1 for error
 */
int GAEDisplay_clear(struct GAEDisplay* disp, int color);

/**
 * @brief Desctructor for the GAEDisplay struct. Calls free on the member varibales
 * @param disp   The GAEDisplay struct being destroyed
 * @return Returns 0 for success and 1 for error
 */
int GAEDisplay_destroy(struct GAEDisplay* disp);


