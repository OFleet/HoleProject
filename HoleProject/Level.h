//
//  Level.h
//  HoleProject
//
//  Created by Mr. HiQ on 10.08.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "cocos2d.h"
#import <Foundation/Foundation.h>


@interface Level : CCNode
{
    
    NSMutableArray *levelHoles;
    
}

- (void) level1;
- (void) level2;
- (void) level3;

- (id) initWithLevel: (int) currentLevel;




@end
