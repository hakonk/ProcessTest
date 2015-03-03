//
//  AppDelegate.m
//  TestForProcess
//
//  Created by Håkon Knutzen on 03/03/15.
//  Copyright (c) 2015 Håkon Knutzen. All rights reserved.
//

#import "AppDelegate.h"
#import "AudioController.h"

@interface AppDelegate ()
@property(nonatomic,strong)AudioController *aud;
@end

@implementation AppDelegate

-(AudioController *)aud
{
    if(!_aud){
        _aud=[[AudioController alloc]init];
    }
    return _aud;
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
//    [self.aud spawnAudioProcess];
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    NSLog(@"Was called");
//    [self.aud killProcess];
    
}

@end
