//
//  ViewController.m
//  TestForProcess
//
//  Created by Håkon Knutzen on 03/03/15.
//  Copyright (c) 2015 Håkon Knutzen. All rights reserved.
//

#import "ViewController.h"
#import "AudioController.h"
@interface ViewController(){
    
}
@property(nonatomic,strong)AudioController *aud;
@property(nonatomic)dispatch_queue_t audio_queue;

@end
@implementation ViewController

-(dispatch_queue_t)audio_queue
{
    if(!_audio_queue){
        _audio_queue=dispatch_queue_create("audio_queue", NULL);
        NSLog(@"Called getter");
    }
    return _audio_queue;
}

-(AudioController *)aud
{
    if(!_aud){
        _aud=[[AudioController alloc] init];
    }
    return _aud;
}

- (IBAction)didTapButtonInTheMiddle:(NSButton *)button {
//    button.state=button.state==NSOnState
    if(button.state==NSOnState){
        dispatch_async(self.audio_queue, ^{
            [self.aud spawnAudioProcess];
        });
    }
    else{
        dispatch_async(self.audio_queue, ^{
            [self.aud killProcess];
        });
    }
//    NSLog(@"%tu",button.state);
//    [self.aud spawnAudioProcess];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    // insert method call to spawn process here

}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

@end
