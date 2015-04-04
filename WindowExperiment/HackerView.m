//
//  HackerView.m
//  WindowExperiment
//
//  Created by Alex on 4/3/15.
//
//

#import "HackerView.h"

@implementation HackerView


- (instancetype)initWithFrame:(NSRect)frameRect {
    self = [super initWithFrame:frameRect];
    if (self) {
        self.wantsLayer = YES;
        self.layer.backgroundColor = [[NSColor greenColor] CGColor];
    }
    return self;
}

+ (instancetype)withRect:(NSRect)rect {
    return [[self alloc] initWithFrame:rect];
}

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    // Drawing code here.
}


@end
