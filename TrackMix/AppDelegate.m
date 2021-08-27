//
//  AppDelegate.m
//  TrackMix
//
//  Created by zhaoyafei on 2021/8/28.
//

#import "AppDelegate.h"
#import "Track.h"

@interface AppDelegate ()

@property (strong) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    Track *aTrack = [[Track alloc] init];
    [self setTrack:aTrack];

    [self updateUserInterface];
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


- (IBAction)takeFloatValueForVolumeFrom:(id)sender {
//    NSString *senderName = nil;
//    if (sender == self.textField) {
//        senderName = @"textField";
//    }
//    else {
//        senderName = @"slider";
//    }
//    NSLog(@"%@ sent takeFloatValueForVolumeFrom: with value %1.2f", senderName, [sender floatValue]);
    float newValue = [sender floatValue];
    [self.track setVolume:newValue];
    [self updateUserInterface];
}

- (IBAction)mute:(id)sender {
//    NSLog(@"received a mute: message");
    [self.track setVolume:0.0];
    [self updateUserInterface];
}

- (void)updateUserInterface {
 
    float volume = [self.track volume];
    [self.textField setFloatValue:volume];
    [self.slider setFloatValue:volume];
}

@end
