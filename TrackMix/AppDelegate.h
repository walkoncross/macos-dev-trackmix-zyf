//
//  AppDelegate.h
//  TrackMix
//
//  Created by zhaoyafei on 2021/8/28.
//

#import <Cocoa/Cocoa.h>
@class Track;

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (weak) IBOutlet NSTextField *textField;
@property (weak) IBOutlet NSSlider *slider;
@property (strong) Track *track;

- (IBAction)mute:(id)sender;
- (IBAction)takeFloatValueForVolumeFrom:(id)sender;
- (void)updateUserInterface;

@end

