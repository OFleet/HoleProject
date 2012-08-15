//
//  HelloWorldLayer.m
//  HoleProject
//
//  Created by Mr. HiQ on 10.08.12.
//  Copyright __MyCompanyName__ 2012. All rights reserved.
//


// Import the interfaces
#import "HelloWorldLayer.h"
#import "Level.h"
#import "Monster.h"


// HelloWorldLayer implementation
@implementation HelloWorldLayer

+(CCScene *) scene
{
	// 'scene' is an autorelease object.
	CCScene *scene = [CCScene node];
	
	// 'layer' is an autorelease object.
	HelloWorldLayer *layer = [HelloWorldLayer node];
	
	// add layer as a child to scene
	[scene addChild: layer];
	
	// return the scene
	return scene;
}

// on "init" you need to initialize your instance
-(id) init
{
	// always call "super" init
	// Apple recommends to re-assign "self" with the "super" return value
	if( (self=[super init])) {
		
                        
        //Вызов метода level1 из класса Level
        /*
        mainLevel = [[[Level alloc] init] autorelease];
        [mainLevel level1];
        [self addChild:mainLevel z:1001];
        */
        loadMainLevel = [[[Level alloc] init] autorelease];
        [loadMainLevel level2];
        [self addChild:loadMainLevel];
        //[self addChild:mainLevel z:100];

        
        
        //Вызов через initWithLevel с передачей id из класса Level
        /*
        mainLevel = [[[Level alloc] initWithLevel:10] autorelease];
        [self addChild:mainLevel z:100];
        */
               
        
        loadMonster = [[[Monster alloc] init] autorelease];
        [loadMonster init];
        [self addChild:loadMonster z:-10];
        
        //-------------- Блок кода - пробую добавить монстров на левел DOWN--------------
        /*
        loadMonster = [[[Monster alloc] init] autorelease];
        [loadMonster goodMonster1];
        [self addChild:loadMonster z:10];
        
                
        [self schedule:@selector(tryPopGoodMonster1:) interval:0.5];
         */
        //-------------- Блок кода - пробую добавить монстров на левел UP--------------
        
                
		// create and initialize a Label
		CCLabelTTF *label = [CCLabelTTF labelWithString:@"Hello World - Hello World - Hello World" fontName:@"Marker Felt" fontSize:64];

		// ask director the the window size
		CGSize size = [[CCDirector sharedDirector] winSize];
	
		// position the label on the center of the screen
		label.position =  ccp( size.width /2 , size.height/2 );
		
		// add the label as a child to this Layer
		[self addChild: label];
	}
	return self;
}

// on "dealloc" you need to release all your retained objects
- (void) dealloc
{
	// in case you have something to dealloc, do it in this method
	// in this particular example nothing needs to be released.
	// cocos2d will automatically release all the children (Label)
	
	// don't forget to call "super dealloc"
	[super dealloc];
}
@end
