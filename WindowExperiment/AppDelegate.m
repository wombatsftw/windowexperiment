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
    
    myWindow = [HackerWindow withRect:NSMakeRect(100, 100, 700, 500)];
    
    NSWindowController *myWindowController = [[NSWindowController alloc] initWithWindow:myWindow];
    
    [myWindowController showWindow:self];
    
    HackerView *myView = [HackerView withRect:NSMakeRect(200, 300, 300, 100)];
    
    HackerLabel *myLabel = [HackerLabel withText:@"WELCOME TO REAL HACKER" atPosition:NSMakeRect(0, 60, 300, 40)];
    
    HackerButton *openerButton = [HackerButton withLabel:@"Hack" atPosition:NSMakeRect(100, 5, 100, 50) action:@selector(doSomething) from:self];
    [openerButton setAction:@selector(doSomething)];
    
    
    [myView addSubview:myLabel];
    [myView addSubview:openerButton];
    
    [myWindow.contentView addSubview:myView];
    
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
    [hackAlert beginSheetModalForWindow:myWindow completionHandler:nil];
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

@end
