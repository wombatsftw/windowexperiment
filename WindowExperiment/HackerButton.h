//
//  HackerButton.h
//  WindowExperiment
//
//  Created by Alex on 4/3/15.
//
//

#import <Cocoa/Cocoa.h>

@interface HackerButton : NSButton

- (instancetype)initWithLabel:(NSString *)labelValue atPosition:(NSRect)rect withAction:(SEL)action;
+ (instancetype)withLabel:(NSString *)labelValue atPosition:(NSRect)rect withAction:(SEL)action;


@end
