//
//  CardSprite.h
//  WarGame
//
//  Created by Jagdish on 12/12/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"


typedef enum {
    CardType1,
    CardType2,
    CardType3,
	CardType4,
	CardType5,
	CardType6,
    CardType7,
    CardType8,
	CardType9,
	CardType10,
	CardType11,
    CardType12,
    CardType13,
	CardType14,
	CardType15,
	CardType16,
    CardType17,
    CardType18,
	CardType19,
	CardType20,
	CardType21,
	CardType22,
	CardType23,
	CardType24,
	CardType25,
	CardType26,
	CardType27,
	CardType28,
	CardType29,
	CardType30,
    CardType31,
	CardType32,
	CardType33,
    CardType34,
    CardType35,
	CardType36,
	CardType37,
	CardType38,
    CardType39,
    CardType40,
	CardType41,
	CardType42,
	CardType43,
	CardType44,
	CardType45,
	CardType46,
	CardType47,
	CardType48,
	CardType49,
	CardType50,
	CardType51,
	CardType52,
} CardType;

@interface CardSprite : CCSprite 
{
    CardType cType;
    int hitTag;
    NSInteger cardTag;
}

@property (nonatomic, assign) CardType cType;
@property (nonatomic, assign) int hitTag;
@property (nonatomic, assign) NSInteger cardTag;


+ (CardSprite *)cardWithType:(CardType)crdType;

@end


/*
 2-14 Spades (Black)
 15-27 Hearts (Red)
 28-40 Diamond 
 41-53 Cubs
 */

