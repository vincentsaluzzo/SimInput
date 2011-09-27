//
//  KeyboardSimulator.m
//  testQuartEvent
//
//  Created by Vincent Saluzzo on 27/09/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "KeyboardSimulator.h"

@implementation KeyboardSimulator


+(void) pressKeyboardTouch:(CGKeyCode)keyCode {
    CGEventRef press = CGEventCreateKeyboardEvent(NULL, (CGKeyCode)keyCode, YES);
    CGEventPost(kCGHIDEventTap, press);
    CFRelease(press);
}
@end
