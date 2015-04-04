//
//  HackerButton.m
//  WindowExperiment
//
//  Created by Alex on 4/3/15.
//
//

#import "HackerButton.h"

@implementation HackerButton

- (instancetype)initWithLabel:(NSString *)labelValue atPosition:(NSRect)rect {
    self = [super initWithFrame:rect];
    if (self) {
        self.title = labelValue;
        [self setButtonType:NSMomentaryLightButton];
        [self setBezelStyle:NSRoundedBezelStyle];
        /*
         
         [openerButton setTitle:@"Hack"];
         [openerButton setButtonType:NSMomentaryLightButton];
         [openerButton setBezelStyle:NSRoundedBezelStyle];
         [openerButton setTarget:self];
         [openerButton setAction:@selector(doSomething)];
         
         */
    }
    return self;
}

+ (instancetype)withLabel:(NSString *)labelValue atPosition:(NSRect)rect action:(SEL)action from:(id)sender {
    id object = [[self alloc] initWithLabel:labelValue atPosition:rect];
    [object setTarget:sender];
//    [object setAction:@selector(action)];
    return object;
}

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    // Drawing code here.
}

@end
