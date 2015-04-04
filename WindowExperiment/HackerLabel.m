//
//  HackerLabel.m
//  WindowExperiment
//
//  Created by Alex on 4/3/15.
//
//

#import "HackerLabel.h"

@implementation HackerLabel

-  (instancetype)initWithValue:(NSString *)labelValue atPosition:(NSRect)rect {
    self = [super initWithFrame:rect];
    if (self) {
        self.drawsBackground = NO;
        self.editable = NO;
        self.textColor = [NSColor greenColor];
        self.font = [NSFont fontWithName:@"Courier" size:20];
        self.stringValue = labelValue;
        self.frame = rect;
    }
    return self;
}

+ (instancetype)withText:(NSString *)labelValue atPosition:(NSRect)rect {
    return [[self alloc] initWithValue:labelValue atPosition:rect];
}

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    // Drawing code here.
}

@end
