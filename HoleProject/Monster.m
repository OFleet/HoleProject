//
//  Monster.m
//  HoleProject
//
//  Created by Mr. HiQ on 13.08.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Monster.h"

@implementation Monster



- (void) popGoodMonster1:(CCSprite *)goodMonster {
    NSLog(@"Начало метода popGoodMonster1.");
    
    [goodMonster setDisplayFrame:[[CCSpriteFrameCache sharedSpriteFrameCache] spriteFrameByName:@"GoodMonster.png"]];
    
        
    CCMoveBy *moveUp = [CCMoveBy actionWithDuration:0.2 position:ccp(- goodMonster.contentSize.height/2, 0)];
    CCEaseInOut *easeMoveUp = [CCEaseInOut actionWithAction:moveUp rate:3.0];
    CCDelayTime *delay = [CCDelayTime actionWithDuration:0.7];
    CCAction *easeMoveDown = [easeMoveUp reverse];
    [goodMonster runAction:[CCSequence actions:easeMoveUp, delay, easeMoveDown, nil]]; // 5
    
    NSLog(@"Конец метода popGoodMonster1.");
}



- (void) tryPopGoodMonster1:(ccTime)dt {
    
    for (CCSprite *goodMonster in goodMonsters) {            
        if (arc4random() % 12 == 0) {
            if (goodMonster.numberOfRunningActions == 0) {
                [self popGoodMonster1:goodMonster];
            }
        }
    }     
}


- (void) goodMonster1{
    
    NSString *monstersSprite = @"Monsters.png";
    NSString *monstersPlist = @"Monsters.plist";
    
    CCSpriteBatchNode *spriteNode = [CCSpriteBatchNode batchNodeWithFile:monstersSprite];
    [[CCSpriteFrameCache sharedSpriteFrameCache] addSpriteFramesWithFile:monstersPlist];      
    //[self addChild:spriteNode z:0];
    [self addChild:spriteNode];
    
    
    goodMonsters = [[NSMutableArray alloc] init];//Массив goodMonsters
    
    float offsetY=0;
    int monsterArrayObject=0;
    
    for (int row = 1; row < 4; row++){
        
        float offsetX=0;
        //if (row != 1) offsetY +=256;
        
        for (int cell = 1; cell < 5; cell++){
            
            CCSprite *goodMonster = [CCSprite spriteWithSpriteFrameName:@"GoodMonster.png"];
            goodMonster.position = ccp(192+offsetX, 128+offsetY);
            [spriteNode addChild:goodMonster z:100];
            [goodMonsters addObject:goodMonster]; //Массив определен выше, addObject в массив goodMonster = [[NSMutableArray alloc] init];
            
            //Обьявляем спрайт goodMonsterInArray что бы вытаскивать координаты по спрайтам из массива и выводим в NSLog 
            CCSprite *goodMonsterInArray = (CCSprite*)  [goodMonsters objectAtIndex:monsterArrayObject];
            NSLog(@"Координаты спрайтов из массива goodMonsters x=%f y=%f",goodMonsterInArray.position.x,goodMonsterInArray.position.y);
            
            
            offsetX += 256;
            monsterArrayObject += 1;
        }
        offsetY +=256;
        
        
    }

    
    
    
}




- (id) init{
    
	if( (self=[super init])){
                
          
        
        
        [self goodMonster1];
        [self schedule:@selector(tryPopGoodMonster1:) interval:1.0];    
    
        
        
    
        }
    return self;
    
}









- (void) badMonster1{
    
    
         
    
}


@end
