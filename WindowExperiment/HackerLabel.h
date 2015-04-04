//
//  HackerLabel.h
//  WindowExperiment
//
//  Created by Alex on 4/3/15.
//
//

#import <Cocoa/Cocoa.h>

@interface HackerLabel : NSTextField

- (instancetype)initWithValue:(NSString *)labelValue atPosition:(NSRect)rect;
+ (instancetype)withText:(NSString *)labelValue atPosition:(NSRect)rect;

@end
