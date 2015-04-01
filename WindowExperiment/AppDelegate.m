//
//  AppDelegate.m
//  WindowExperiment
//
//  Created by Alex on 3/31/15.
//
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    
    // TODO: Going to subclass all this crap
    
    _myWindow = [[HackerWindow alloc] initWithContentRect:NSMakeRect(100, 100, 700, 500) styleMask:NSTitledWindowMask backing:NSBackingStoreBuffered defer:NO];
    [_myWindow makeKeyAndOrderFront:self];
    
    NSView *myView = [[NSView alloc] initWithFrame:NSMakeRect(200, 300, 300, 100)];
    [myView setWantsLayer:YES];
    myView.layer.backgroundColor = [[NSColor greenColor] CGColor];
    
    NSTextField *myLabel = [[NSTextField alloc] initWithFrame:NSMakeRect(0, 60, 300, 40)];
    [myLabel setDrawsBackground:NO];
    [myLabel setStringValue:@"WELCOME TO REAL HACKER"];
    [myLabel setEditable:NO];
    [myLabel setTextColor:[NSColor greenColor]];
    [myLabel setFont:[NSFont fontWithName:@"Courier" size:20]];
    
    NSButton *openerButton = [[NSButton alloc] initWithFrame:NSMakeRect(100, 5, 100, 50)];
    [openerButton setTitle:@"Hack"];
    [openerButton setButtonType:NSMomentaryLightButton];
    [openerButton setBezelStyle:NSRoundedBezelStyle];
    [openerButton setTarget:self];
    [openerButton setAction:@selector(doSomething)];
    
    [myView addSubview:myLabel];
    [myView addSubview:openerButton];
    
    [_myWindow.contentView addSubview:myView];
    
    NSString *audioFilePath = [[NSBundle mainBundle]  pathForResource:@"funny-sound" ofType:@"mp3"];
    NSURL *file = [NSURL fileURLWithPath:audioFilePath];
    
    audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:file error:nil];
    [audioPlayer prepareToPlay];
    
}

- (void)doSomething {
    NSLog(@"DOING SOMETHING LIKE HACKING THE PENTAGON RIGHT NOW");
    [audioPlayer play];
    
    NSAlert *hackAlert = [[NSAlert alloc] init];
    [hackAlert setMessageText:@"HACKING THE PENTAGON NOW..."];
    [hackAlert addButtonWithTitle:@"OK"];
    [hackAlert beginSheetModalForWindow:_myWindow completionHandler:nil];
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

@end
