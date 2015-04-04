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
#import "HackerView.h"
#import "HackerLabel.h"
#import "HackerButton.h"

@interface AppDelegate : NSObject <NSApplicationDelegate> {
    AVAudioPlayer *audioPlayer;
    HackerWindow *myWindow;
}

- (void)doSomething;

@end

