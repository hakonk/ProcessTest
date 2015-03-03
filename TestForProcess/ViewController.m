//
//  ViewController.m
//  TestForProcess
//
//  Created by Håkon Knutzen on 03/03/15.
//  Copyright (c) 2015 Håkon Knutzen. All rights reserved.
//

#import "ViewController.h"
#import "AudioController.h"
@interface ViewController()
@property(nonatomic,strong)AudioController *aud;
@end
@implementation ViewController

-(AudioController *)aud
{
    if(!_aud){
        _aud=[[AudioController alloc] init];
    }
    return _aud;
}

- (IBAction)didTapButtonInTheMiddle:(NSButton *)button {
//    button.state=button.state==NSOnState
#warning Not implemented
    if(button.state==NSOnState){
        
    }
    [self.aud spawnAudioProcess];
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
