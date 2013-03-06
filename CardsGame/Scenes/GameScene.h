//
//  GameScene.h
//  WarGame
//
//  Created by Jagdish on 12/12/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"
#import "CardSprite.h"

@interface GameScene : CCLayer
{
    CGSize winSize;
    NSMutableArray *aryCpuCard, *aryPlayerCard;
    
    CCLabelTTF *lblMyCardNumber, *lblCPUCardNumber;
    CCLabelTTF *lblMyCardTurnCount, *lblCPUCardTurnCount;
    
    CCMenuItemSprite *mMenu, *cMenu;
    
    CardSprite *cardObjCPU, *cardObjMY;
    
    int cardIndexCPU, cardIndexMY;
    NSInteger myCounter, cpuCounter;
    
    NSInteger turnTimer, turnLimitTimer;
    NSTimer *turnTimerObj;
    
    BOOL isMyTurn, isTurnCheckMY, isCheckHighest;
    
    int countIndex;
    
    NSMutableArray *warArray;
}

+(CCScene *)scene;

-(void)divideCardsInTwoPlayer;
-(void)checkCardWithHighest;
-(void)setUpPlayers;
-(int)myRandom:(int)size;
-(void)decideTurnofPlayer;

-(void)callWarCards;

@end
