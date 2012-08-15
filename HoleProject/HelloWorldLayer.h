//
//  HelloWorldLayer.h
//  HoleProject
//
//  Created by Mr. HiQ on 10.08.12.
//  Copyright __MyCompanyName__ 2012. All rights reserved.
//


// When you import this file, you import all the cocos2d classes
#import "cocos2d.h"

@class Level;
@class Monster;


// HelloWorldLayer
@interface HelloWorldLayer : CCLayer
{
Level *loadMainLevel;
Monster *loadMonster;   




}

// returns a CCScene that contains the HelloWorldLayer as the only child
+(CCScene *) scene;

@end
