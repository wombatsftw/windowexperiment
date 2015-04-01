//
//  AppDelegate.h
//  WindowExperiment
//
//  Created by Alex on 3/31/15.
//
//

#import <Cocoa/Cocoa.h>
#import <AVFoundation/AVFoundation.h>
#import "HackerWindow.h"

@interface AppDelegate : NSObject <NSApplicationDelegate> {
    AVAudioPlayer *audioPlayer;
}

@property(strong) HackerWindow *myWindow;

- (void)doSomething;

@end

