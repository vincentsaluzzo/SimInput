//
//  MouseSimulator.h
//  testQuartEvent
//
//  Created by Vincent Saluzzo on 27/09/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <CoreFoundation/CoreFoundation.h>
#import <Foundation/Foundation.h>
@interface MouseSimulator : NSObject


+(void) moveMouseTo:(CGPoint)coordinate;
+(void) setMouseCoordinate:(CGPoint)coordinate;

+(void) leftClick;
+(void) rightClick;
+(void) centerClick;

+(void) leftClickAtCoordinate:(CGPoint)coordinate;
+(void) rightClickAtCoordinate:(CGPoint)coordinate;
+(void) centerClickAtCoordinate:(CGPoint)coordinate;


+(void) leftMouseDownAtCoordinate:(CGPoint)coordinate;
+(void) rightMouseDownAtCoordinate:(CGPoint)coordinate;
+(void) centerMouseDownAtCoordinate:(CGPoint)coordinate;

+(void) leftMouseUpAtCoordinate:(CGPoint)coordinate;
+(void) rightMouseUpAtCoordinate:(CGPoint)coordinate;
+(void) centerMouseUpAtCoordinate:(CGPoint)coordinate;

+(void) scrollRightHorizontalLines:(int)numberOfLine;
+(void) scrollLeftHorizontalLines:(int)numberOfLine;
+(void) scrollUpVerticalLines:(int)numberOfLine;
+(void) scrollDownVerticalLines:(int)numberOfLine;

@end
