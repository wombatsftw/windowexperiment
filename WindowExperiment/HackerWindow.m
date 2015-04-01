//
//  HackerWindow.m
//  WindowExperiment
//
//  Created by Alex on 3/31/15.
//
//

#import "HackerWindow.h"

@implementation HackerWindow

- (instancetype)initWithContentRect:(NSRect)contentRect styleMask:(NSUInteger)aStyle backing:(NSBackingStoreType)bufferingType defer:(BOOL)flag {
    self = [super initWithContentRect:contentRect styleMask:aStyle backing:bufferingType defer:flag];
    if (self) {
        [self setBackgroundColor:[NSColor blackColor]];
    }
    return self;
}

@end
