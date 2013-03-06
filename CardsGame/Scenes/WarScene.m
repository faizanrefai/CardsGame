//
//  WarScene.m
//  CardsGame
//
//  Created by Jagdish Prajapati on 20/02/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import "WarScene.h"


@implementation WarScene

+(CCScene *) scene
{
	CCScene *scene = [CCScene node];
	WarScene *layer = [WarScene node];
	[scene addChild: layer];
	return scene;
}

// on "init" you need to initialize your instance
-(id) init
{
	if( (self=[super init]))
    {
        self.isTouchEnabled = YES;
        
        winSize = [CCDirector sharedDirector].winSize;

        CCSprite *spriteBack = [CCSprite spriteWithFile:@"table.png"];
        spriteBack.position = ccp(winSize.width/2, winSize.height/2);
        spriteBack.scale = 0.4;
        [self addChild:spriteBack z:0];

	}
	return self;
}

@end
