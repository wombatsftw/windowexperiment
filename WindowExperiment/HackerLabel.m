//
//  HackerLabel.m
//  WindowExperiment
//
//  Created by Alex on 4/3/15.
//
//

#import "HackerLabel.h"

@implementation HackerLabel

//-  (instancetype)initWithValue:(NSString *)labelValue atPosition:(NSRect)rect {
//    self = [super initWithFrame:rect];
//    if (self) {
//        self.drawsBackground = NO;
//        self.editable = NO;
//        self.textColor = [NSColor greenColor];
//        self.font = [NSFont fontWithName:@"Courier" size:20];
//        self.stringValue = labelValue;
//        self.frame = rect;
//    }
//    return self;
//}

+ (instancetype)withText:(NSString *)labelValue atPosition:(NSRect)rect {
    id object = [[self alloc] initWithFrame:rect];
    
    if (object) {
        [object setDrawsBackground:NO];
        [object setEditable:NO];
        [object setTextColor:[NSColor greenColor]];
        [object setFont:[NSFont fontWithName:@"Courier" size:20]];
        [object setStringValue:labelValue];
        [object setFrame:rect];
    }
    
    return object;
}

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    // Drawing code here.
}

@end
