//
//  HackerWindow.m
//  WindowExperiment
//
//  Created by Alex on 3/31/15.
//
//

#import "HackerWindow.h"

@implementation HackerWindow

- (instancetype)initWithRect:(NSRect)rect {
    self = [super initWithContentRect:rect styleMask:NSTitledWindowMask backing:NSBackingStoreBuffered defer:NO];
    if (self) {
        self.backgroundColor = [NSColor blackColor];
    }
    return self;
}

+ (instancetype)withRect:(NSRect)rect {
    return [[self alloc] initWithRect:rect];
}

@end
