//
//  HackerButton.m
//  WindowExperiment
//
//  Created by Alex on 4/3/15.
//
//

#import "HackerButton.h"

@implementation HackerButton

- (instancetype)initWithLabel:(NSString *)labelValue atPosition:(NSRect)rect withAction:(SEL)action {
    self = [super initWithFrame:rect];
    if (self) {
        self.title = labelValue;
        [self setButtonType:NSMomentaryLightButton];
        [self setBezelStyle:NSRoundedBezelStyle];
        self.target = self;
        self.action = action;
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

+ (instancetype)withLabel:(NSString *)labelValue atPosition:(NSRect)rect withAction:(SEL)action {
    return [[self alloc] initWithLabel:labelValue atPosition:rect withAction:action];
}

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    // Drawing code here.
}

@end
