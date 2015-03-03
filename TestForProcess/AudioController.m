//
//  AudioController.m
//  TestForProcess
//
//  Created by Håkon Knutzen on 03/03/15.
//  Copyright (c) 2015 Håkon Knutzen. All rights reserved.
//

#import "AudioController.h"

@implementation AudioController{
    pid_t _pid;
}
-(void)spawnAudioProcess
{
    NSLog(@"Calling spawn");
    spawn();
}

-(void)killProcess
{
    int killed= kill(_pid, 0);
    if(killed!=-1){
        NSLog(@"Successfully killed the process");
    }
    else{
        NSLog(@"Failed to kill process");
    }
}

void spawn(){
    pid_t _pid=fork();
    if(_pid==0){
        static char *argv[]={(char*)" ",/*(char*)"echo",(char*)"Foo is my name.",*/NULL};
        execv("/Users/hakonknutzen/Documents/Dev/AudioTest/usr/local/bin/AudioTest",argv);
        exit(127);
    }
    else{
        waitpid(_pid,0,0);
        
    }
}
@end
