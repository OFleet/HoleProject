//
//  Monster.h
//  HoleProject
//
//  Created by Mr. HiQ on 13.08.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "cocos2d.h"
#import <Foundation/Foundation.h>
#import "CCNode.h"

@interface Monster : CCNode
{
    
    NSMutableArray *goodMonsters;
    NSMutableArray *badMonsters;
}

- (void) goodMonster1;
- (void) badMonster1;

- (id) init;

//- (void) tryPopGoodMonster1:(ccTime)dt;
//- (void) popGoodMonster1:(CCSprite *)goodMonster;


@end
