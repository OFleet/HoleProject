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



- (void) level2{
    
    NSString *levelSprite = @"Hole.png";
    NSString *levelPlist = @"Hole.plist";
    //CGSize winSize = [CCDirector sharedDirector].winSize;
    
    CCSpriteBatchNode *spriteNode = [CCSpriteBatchNode batchNodeWithFile:levelSprite];
    [[CCSpriteFrameCache sharedSpriteFrameCache] addSpriteFramesWithFile:levelPlist];      
    //[self addChild:spriteNode z:100];
    [self addChild:spriteNode];
    
    levelHoles = [[NSMutableArray alloc] init];//Массив levelHoles
    float offsetY=0;
    
    for (int row = 1; row < 4; row++){
        
        float offsetX=0;
        //if (row != 1) offsetY +=256;
                
        for (int cell = 1; cell < 5; cell++){
            
            
            NSLog(@"Строка номер = %d", row);
            NSLog(@"Столбец номер = %d", cell);
            NSLog(@"---------------------");
            
            CCSprite *leftHole = [CCSprite spriteWithSpriteFrameName:@"LHole.png"];
            leftHole.position = ccp(64+offsetX, 128+offsetY);
            [spriteNode addChild:leftHole z:-100];
            //[levelHoles addObject:leftHole]; //Массив описан выше. Добавить элемент в массив levelHoles = [[NSMutableArray alloc] init];
            
            
            CCSprite *rightHole = [CCSprite spriteWithSpriteFrameName:@"RHole.png"];
            rightHole.position = ccp(192+offsetX, 128+offsetY);
            [spriteNode addChild:rightHole z:100];
            //[levelHoles addObject:rightHole]; //Массив описан выше. Добавить элемент в массив levelHoles = [[NSMutableArray alloc] init];
            
            
            offsetX += 256;
            
        }
        offsetY +=256;
        
        
    }
    
    
    
}
    
    


- (void) level3{
    
    NSString *levelSprite = @"Hole.png";
    NSString *levelPlist = @"Hole.plist";
    //CGSize winSize = [CCDirector sharedDirector].winSize;
    
    CCSpriteBatchNode *spriteNode = [CCSpriteBatchNode batchNodeWithFile:levelSprite];
    [[CCSpriteFrameCache sharedSpriteFrameCache] addSpriteFramesWithFile:levelPlist];      
    [self addChild:spriteNode z:110];
    
    levelHoles = [[NSMutableArray alloc] init];
    
    //ROW - Lower 
    CCSprite *leftHole1 = [CCSprite spriteWithSpriteFrameName:@"LHole.png"];
    leftHole1.position = ccp(128/2, 256/2);
    [spriteNode addChild:leftHole1];
    [levelHoles addObject:leftHole1];
    CCSprite *rightHole1 = [CCSprite spriteWithSpriteFrameName:@"RHole.png"];
    rightHole1.position = ccp(256-64, 256/2);
    [spriteNode addChild:rightHole1];
    [levelHoles addObject:rightHole1];
    
    
    CCSprite *leftHole2 = [CCSprite spriteWithSpriteFrameName:@"LHole.png"];
    leftHole2.position = ccp(128/2+256, 256/2);
    [spriteNode addChild:leftHole2];
    [levelHoles addObject:leftHole2];
    CCSprite *rightHole2 = [CCSprite spriteWithSpriteFrameName:@"RHole.png"];
    rightHole2.position = ccp(256-64+256, 256/2);
    [spriteNode addChild:rightHole2];
    [levelHoles addObject:rightHole2];
    
    
    CCSprite *leftHole3 = [CCSprite spriteWithSpriteFrameName:@"LHole.png"];
    leftHole3.position = ccp(128/2+256+256, 256/2);
    [spriteNode addChild:leftHole3];
    [levelHoles addObject:leftHole3];
    CCSprite *rightHole3 = [CCSprite spriteWithSpriteFrameName:@"RHole.png"];
    rightHole3.position = ccp(256-64+256+256, 256/2);
    [spriteNode addChild:rightHole3];
    [levelHoles addObject:rightHole3];
    
    
    CCSprite *leftHole4 = [CCSprite spriteWithSpriteFrameName:@"LHole.png"];
    leftHole4.position = ccp(128/2+256+256+256, 256/2);
    [spriteNode addChild:leftHole4];
    [levelHoles addObject:leftHole4];
    CCSprite *rightHole4 = [CCSprite spriteWithSpriteFrameName:@"RHole.png"];
    rightHole4.position = ccp(256-64+256+256+256, 256/2);
    [spriteNode addChild:rightHole4];
    [levelHoles addObject:rightHole4];
            
    //ROW - Middle
    CCSprite *leftHole5 = [CCSprite spriteWithSpriteFrameName:@"LHole.png"];
    leftHole5.position = ccp(128/2, 256/2+256);
    [spriteNode addChild:leftHole5];
    [levelHoles addObject:leftHole5];
    CCSprite *rightHole5 = [CCSprite spriteWithSpriteFrameName:@"RHole.png"];
    rightHole5.position = ccp(256-64, 256/2+256);
    [spriteNode addChild:rightHole5];
    [levelHoles addObject:rightHole5];
    
    
    CCSprite *leftHole6 = [CCSprite spriteWithSpriteFrameName:@"LHole.png"];
    leftHole6.position = ccp(128/2+256, 256/2+256);
    [spriteNode addChild:leftHole6];
    [levelHoles addObject:leftHole6];
    CCSprite *rightHole6 = [CCSprite spriteWithSpriteFrameName:@"RHole.png"];
    rightHole6.position = ccp(256-64+256, 256/2+256);
    [spriteNode addChild:rightHole6];
    [levelHoles addObject:rightHole6];
    
    
    CCSprite *leftHole7 = [CCSprite spriteWithSpriteFrameName:@"LHole.png"];
    leftHole7.position = ccp(128/2+256+256, 256/2+256);
    [spriteNode addChild:leftHole7];
    [levelHoles addObject:leftHole7];
    CCSprite *rightHole7 = [CCSprite spriteWithSpriteFrameName:@"RHole.png"];
    rightHole7.position = ccp(256-64+256+256, 256/2+256);
    [spriteNode addChild:rightHole7];
    [levelHoles addObject:rightHole7];
    
    
    CCSprite *leftHole8 = [CCSprite spriteWithSpriteFrameName:@"LHole.png"];
    leftHole8.position = ccp(128/2+256+256+256, 256/2+256);
    [spriteNode addChild:leftHole8];
    [levelHoles addObject:leftHole8];
    CCSprite *rightHole8 = [CCSprite spriteWithSpriteFrameName:@"RHole.png"];
    rightHole8.position = ccp(256-64+256+256+256, 256/2+256);
    [spriteNode addChild:rightHole8];
    [levelHoles addObject:rightHole8];
    
}





@end
