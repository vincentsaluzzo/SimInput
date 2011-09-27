//
//  KeyboardSimulator.h
//  testQuartEvent
//
//  Created by Vincent Saluzzo on 27/09/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@interface KeyboardSimulator : NSObject {
}

+(void) pressKeyboardTouch:(CGKeyCode)keyCode;
@end
