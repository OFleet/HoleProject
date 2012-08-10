//
//  Level.m
//  HoleProject
//
//  Created by Mr. HiQ on 10.08.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Level.h"

@implementation Level

- (id) initWithLevel: (int) CurrentLevel{
    self = [super init];
    if (CurrentLevel == 1){
        [self level1];
    
    }else  if (CurrentLevel == 2){
        
    }else  if (CurrentLevel == 3){                
    
    }else{
        CGSize winSize = [CCDirector sharedDirector].winSize;
        
        [[CCSpriteFrameCache sharedSpriteFrameCache] addSpriteFramesWithFile:@"background.plist"];
        CCSprite *background = [CCSprite spriteWithSpriteFrameName:@"bg_dirt.png"];
        background.scale = 2;
        background.position = ccp(winSize.width/2, winSize.height/3);
        [self addChild:background z:101];

    
    
    }

    
    return self;
       
}

- (void) level1{

[self removeAllChildrenWithCleanup:YES];
CGSize winSize = [CCDirector sharedDirector].winSize;
    
[[CCSpriteFrameCache sharedSpriteFrameCache] addSpriteFramesWithFile:@"background.plist"];
CCSprite *background = [CCSprite spriteWithSpriteFrameName:@"bg_dirt.png"];
background.scale = 1;
background.position = ccp(winSize.width/2, winSize.height/3);
[self addChild:background z:100];
    


}


@end
