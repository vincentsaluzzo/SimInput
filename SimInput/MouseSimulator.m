//
//  MouseSimulator.m
//  testQuartEvent
//
//  Created by Vincent Saluzzo on 27/09/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "MouseSimulator.h"

@implementation MouseSimulator

+(void) moveMouseTo:(CGPoint)coordinate {
    CGEventRef ourEvent = CGEventCreate(NULL);
    CGPoint originCoordOfMouse = CGEventGetLocation(ourEvent);
    
    for(int i = 0; i < 10; i++) {
        float x = ((coordinate.x - originCoordOfMouse.x)/10 * i) + originCoordOfMouse.x;
        float y = ((coordinate.y - originCoordOfMouse.y)/10 * i) + originCoordOfMouse.y;
        [MouseSimulator setMouseCoordinate:CGPointMake(x, y)];
        usleep(100*1000);
    }
    CFRelease(ourEvent);
}

+(void) setMouseCoordinate:(CGPoint)coordinate {
    CGEventRef move = CGEventCreateMouseEvent(NULL, kCGEventMouseMoved, coordinate, kCGMouseButtonLeft);
    CGEventPost(kCGHIDEventTap, move);
    CFRelease(move);
}

+(void) leftClick {
    CGEventRef ourEvent = CGEventCreate(NULL);
    CGPoint originCoordOfMouse = CGEventGetLocation(ourEvent);
    [MouseSimulator leftClickAtCoordinate:originCoordOfMouse];
    CFRelease(ourEvent);
}

+(void) rightClick {
    CGEventRef ourEvent = CGEventCreate(NULL);
    CGPoint originCoordOfMouse = CGEventGetLocation(ourEvent);
    [MouseSimulator rightClickAtCoordinate:originCoordOfMouse];
    CFRelease(ourEvent);
}

+(void) centerClick {
    CGEventRef ourEvent = CGEventCreate(NULL);
    CGPoint originCoordOfMouse = CGEventGetLocation(ourEvent);
    [MouseSimulator centerClickAtCoordinate:originCoordOfMouse];
    CFRelease(ourEvent);
}

+(void) leftClickAtCoordinate:(CGPoint)coordinate {
    CGEventRef click_down = CGEventCreateMouseEvent(NULL, kCGEventLeftMouseDown, coordinate, kCGMouseButtonLeft);
    CGEventRef click_up = CGEventCreateMouseEvent(NULL, kCGEventLeftMouseUp, coordinate, kCGMouseButtonLeft);
    CGEventPost(kCGHIDEventTap, click_down);
    CGEventPost(kCGHIDEventTap, click_up);
    CFRelease(click_down);
    CFRelease(click_up);
}

+(void) rightClickAtCoordinate:(CGPoint)coordinate {
    CGEventRef click_down = CGEventCreateMouseEvent(NULL, kCGEventRightMouseDown, coordinate, kCGMouseButtonRight);
    CGEventRef click_up = CGEventCreateMouseEvent(NULL, kCGEventRightMouseUp, coordinate, kCGMouseButtonRight);
    CGEventPost(kCGHIDEventTap, click_down);
    CGEventPost(kCGHIDEventTap, click_up);
    CFRelease(click_down);
    CFRelease(click_up);
}

+(void) centerClickAtCoordinate:(CGPoint)coordinate {
    CGEventRef click_down = CGEventCreateMouseEvent(NULL, kCGEventOtherMouseDown, coordinate, kCGMouseButtonCenter);
    CGEventRef click_up = CGEventCreateMouseEvent(NULL, kCGEventOtherMouseUp, coordinate, kCGMouseButtonCenter);
    CGEventPost(kCGHIDEventTap, click_down);
    CGEventPost(kCGHIDEventTap, click_up);
    CFRelease(click_down);
    CFRelease(click_up);
}


+(void) leftMouseDownAtCoordinate:(CGPoint)coordinate {
    CGEventRef click_down = CGEventCreateMouseEvent(NULL, kCGEventLeftMouseDown, coordinate, kCGMouseButtonLeft);
    CGEventPost(kCGHIDEventTap, click_down);
    CFRelease(click_down);
} 

+(void) rightMouseDownAtCoordinate:(CGPoint)coordinate {
    CGEventRef click_down = CGEventCreateMouseEvent(NULL, kCGEventRightMouseDown, coordinate, kCGMouseButtonRight);
    CGEventPost(kCGHIDEventTap, click_down);
    CFRelease(click_down);
}

+(void) centerMouseDownAtCoordinate:(CGPoint)coordinate {
    CGEventRef click_down = CGEventCreateMouseEvent(NULL, kCGEventOtherMouseDown, coordinate, kCGMouseButtonCenter);
    CGEventPost(kCGHIDEventTap, click_down);
    CFRelease(click_down);
}

+(void) leftMouseUpAtCoordinate:(CGPoint)coordinate {
    CGEventRef click_up = CGEventCreateMouseEvent(NULL, kCGEventLeftMouseUp, coordinate, kCGMouseButtonLeft);
    CGEventPost(kCGHIDEventTap, click_up);
    CFRelease(click_up);
}

+(void) rightMouseUpAtCoordinate:(CGPoint)coordinate {
    CGEventRef click_up = CGEventCreateMouseEvent(NULL, kCGEventRightMouseUp, coordinate, kCGMouseButtonRight);
    CGEventPost(kCGHIDEventTap, click_up);
    CFRelease(click_up);
}

+(void) centerMouseUpAtCoordinate:(CGPoint)coordinate {
    CGEventRef click_up = CGEventCreateMouseEvent(NULL, kCGEventOtherMouseUp, coordinate, kCGMouseButtonCenter);
    CGEventPost(kCGHIDEventTap, click_up);
    CFRelease(click_up);
}

+(void) scrollRightHorizontalLines:(int)numberOfLine {
    CGEventRef scroll = CGEventCreateScrollWheelEvent(NULL, kCGScrollEventUnitLine, 2, 0, -numberOfLine);
    CGEventPost(kCGHIDEventTap, scroll);
    CFRelease(scroll);
}

+(void) scrollLeftHorizontalLines:(int)numberOfLine {
    CGEventRef scroll = CGEventCreateScrollWheelEvent(NULL, kCGScrollEventUnitLine, 2, 0, numberOfLine);
    CGEventPost(kCGHIDEventTap, scroll);
    CFRelease(scroll);
}

+(void) scrollUpVerticalLines:(int)numberOfLine {
    CGEventRef scroll = CGEventCreateScrollWheelEvent(NULL, kCGScrollEventUnitLine, 1, -numberOfLine);
    CGEventPost(kCGHIDEventTap, scroll);
    CFRelease(scroll);
}

+(void) scrollDownVerticalLines:(int)numberOfLine {
    CGEventRef scroll = CGEventCreateScrollWheelEvent(NULL, kCGScrollEventUnitLine, 1, numberOfLine);
    CGEventPost(kCGHIDEventTap, scroll);
    CFRelease(scroll);
}

@end
