//
//  CardSprite.m
//  WarGame
//
//  Created by Jagdish on 12/12/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

// S H  D C

#import "CardSprite.h"

#define kScale 0.8

#define kCardTag_S2 2
#define kCardTag_S3 3
#define kCardTag_S4 4
#define kCardTag_S5 5
#define kCardTag_S6 6
#define kCardTag_S7 7
#define kCardTag_S8 8
#define kCardTag_S9 9
#define kCardTag_S10 10
#define kCardTag_S11 11
#define kCardTag_S12 12
#define kCardTag_S13 13
#define kCardTag_S14 14

#define kCardTag_H2 15
#define kCardTag_H3 16
#define kCardTag_H4 17
#define kCardTag_H5 18
#define kCardTag_H6 19
#define kCardTag_H7 20
#define kCardTag_H8 21
#define kCardTag_H9 22
#define kCardTag_H10 23
#define kCardTag_H11 24
#define kCardTag_H12 25
#define kCardTag_H13 26
#define kCardTag_H14 27

#define kCardTag_D2 28
#define kCardTag_D3 29
#define kCardTag_D4 30
#define kCardTag_D5 31
#define kCardTag_D6 32
#define kCardTag_D7 33
#define kCardTag_D8 34
#define kCardTag_D9 35
#define kCardTag_D10 36
#define kCardTag_D11 37
#define kCardTag_D12 38
#define kCardTag_D13 39
#define kCardTag_D14 40

#define kCardTag_C2 41
#define kCardTag_C3 42
#define kCardTag_C4 43
#define kCardTag_C5 44
#define kCardTag_C6 45
#define kCardTag_C7 46
#define kCardTag_C8 47
#define kCardTag_C9 48
#define kCardTag_C10 49
#define kCardTag_C11 50
#define kCardTag_C12 51
#define kCardTag_C13 52
#define kCardTag_C14 53


@implementation CardSprite
@synthesize cType;
@synthesize hitTag;
@synthesize cardTag;

+ (CardSprite *)cardWithType:(CardType)crdType
{
    CardSprite *cardObj = nil;
    if (crdType == kCardTag_S2)
	{
        cardObj = [[[CardSprite alloc] initWithFile:@"card-S2.png"] autorelease]; //Spade S BLACK
        cardObj.scale = kScale;
        cardObj.hitTag = kCardTag_S2;
        cardObj.cardTag = 2;
    }
    else if (crdType == kCardTag_S3)
	{
        cardObj = [[[CardSprite alloc] initWithFile:@"card-S3.png"] autorelease];
        cardObj.scale = kScale;
        cardObj.hitTag = kCardTag_S3;
        cardObj.cardTag = 3;
    }
    else if (crdType == kCardTag_S4)
	{
        cardObj = [[[CardSprite alloc] initWithFile:@"card-S4.png"] autorelease];
        cardObj.scale = kScale;
        cardObj.hitTag = kCardTag_S4;
        cardObj.cardTag = 4;
    }
    else if (crdType == kCardTag_S5)
	{
        cardObj = [[[CardSprite alloc] initWithFile:@"card-S5.png"] autorelease];
        cardObj.scale = kScale;
        cardObj.hitTag = kCardTag_S5;
        cardObj.cardTag = 5;
    }
    else if (crdType == kCardTag_S6)
	{
        cardObj = [[[CardSprite alloc] initWithFile:@"card-S6.png"] autorelease];
        cardObj.scale = kScale;
        cardObj.hitTag = kCardTag_S6;
        cardObj.cardTag = 6;
    }
    else if (crdType == kCardTag_S7)
	{
        cardObj = [[[CardSprite alloc] initWithFile:@"card-S7.png"] autorelease];
        cardObj.scale = kScale;
        cardObj.hitTag = kCardTag_S7;
        cardObj.cardTag = 7;
    }
    else if (crdType == kCardTag_S8)
	{
        cardObj = [[[CardSprite alloc] initWithFile:@"card-S8.png"] autorelease];
        cardObj.scale = kScale;
        cardObj.hitTag = kCardTag_S8;
        cardObj.cardTag =8;
    }
    else if (crdType == kCardTag_S9)
	{
        cardObj = [[[CardSprite alloc] initWithFile:@"card-S9.png"] autorelease];
        cardObj.scale = kScale;
        cardObj.hitTag = kCardTag_S9;
        cardObj.cardTag = 9;
    }
    else if (crdType == kCardTag_S10)
	{
        cardObj = [[[CardSprite alloc] initWithFile:@"card-S10.png"] autorelease];
        cardObj.scale = kScale;
        cardObj.hitTag = kCardTag_S10;
        cardObj.cardTag = 10;
    }
    else if (crdType == kCardTag_S11)
	{
        cardObj = [[[CardSprite alloc] initWithFile:@"card-S11.png"] autorelease];
        cardObj.scale = kScale;
        cardObj.hitTag = kCardTag_S11;
        cardObj.cardTag = 11;
    }
    else if (crdType == kCardTag_S12)
	{
        cardObj = [[[CardSprite alloc] initWithFile:@"card-S12.png"] autorelease];
        cardObj.scale = kScale;
        cardObj.hitTag = kCardTag_S12;
        cardObj.cardTag = 12;
    }
    else if (crdType == kCardTag_S13)
	{
        cardObj = [[[CardSprite alloc] initWithFile:@"card-S13.png"] autorelease];
        cardObj.scale = kScale;
        cardObj.hitTag = kCardTag_S13;
        cardObj.cardTag = 13;
    }
    else if (crdType == kCardTag_S14)
	{
        cardObj = [[[CardSprite alloc] initWithFile:@"card-S14.png"] autorelease];
        cardObj.scale = kScale;
        cardObj.hitTag = kCardTag_S14;
        cardObj.cardTag = 14;
    }
    else if (crdType == kCardTag_H2)
	{
        cardObj = [[[CardSprite alloc] initWithFile:@"card-H2.png"] autorelease];   //Heart H RED
        cardObj.scale = kScale;
        cardObj.hitTag = kCardTag_H2;
        cardObj.cardTag = 2;
    }
    else if (crdType == kCardTag_H3)
	{
        cardObj = [[[CardSprite alloc] initWithFile:@"card-H3.png"] autorelease];
        cardObj.scale = kScale;
        cardObj.hitTag = kCardTag_H3;
        cardObj.cardTag = 3;
    }
    else if (crdType == kCardTag_H4)
	{
        cardObj = [[[CardSprite alloc] initWithFile:@"card-H4.png"] autorelease];
        cardObj.scale = kScale;
        cardObj.hitTag = kCardTag_H4;
        cardObj.cardTag = 4;
    }
    else if (crdType == kCardTag_H5)
	{
        cardObj = [[[CardSprite alloc] initWithFile:@"card-H5.png"] autorelease];
        cardObj.scale = kScale;
        cardObj.hitTag = kCardTag_H5;
        cardObj.cardTag = 5;
    }
    else if (crdType == kCardTag_H6)
	{
        cardObj = [[[CardSprite alloc] initWithFile:@"card-H6.png"] autorelease];
        cardObj.scale = kScale;
        cardObj.hitTag = kCardTag_H6;
        cardObj.cardTag = 6;
    }
    else if (crdType == kCardTag_H7)
	{
        cardObj = [[[CardSprite alloc] initWithFile:@"card-H7.png"] autorelease];
        cardObj.scale = kScale;
        cardObj.hitTag = kCardTag_H7;
        cardObj.cardTag = 7;
    }
    else if (crdType == kCardTag_H8)
	{
        cardObj = [[[CardSprite alloc] initWithFile:@"card-H8.png"] autorelease];
        cardObj.scale = kScale;
        cardObj.hitTag = kCardTag_H8;
        cardObj.cardTag = 8;
    }
    else if (crdType == kCardTag_H9)
	{
        cardObj = [[[CardSprite alloc] initWithFile:@"card-H9.png"] autorelease];
        cardObj.scale = kScale;
        cardObj.hitTag = kCardTag_H9;
        cardObj.cardTag = 9;
    }
    else if (crdType == kCardTag_H10)
	{
        cardObj = [[[CardSprite alloc] initWithFile:@"card-H10.png"] autorelease];
        cardObj.scale = kScale;
        cardObj.hitTag = kCardTag_H10;
        cardObj.cardTag = 10;
    }
    else if (crdType == kCardTag_H11)
	{
        cardObj = [[[CardSprite alloc] initWithFile:@"card-H11.png"] autorelease];
        cardObj.scale = kScale;
        cardObj.hitTag = kCardTag_H11;
        cardObj.cardTag = 11;
    }
    else if (crdType == kCardTag_H12)
	{
        cardObj = [[[CardSprite alloc] initWithFile:@"card-H12.png"] autorelease];
        cardObj.scale = kScale;
        cardObj.hitTag = kCardTag_H12;
        cardObj.cardTag = 12;
    }
    else if (crdType == kCardTag_H13)
	{
        cardObj = [[[CardSprite alloc] initWithFile:@"card-H13.png"] autorelease];
        cardObj.scale = kScale;
        cardObj.hitTag = kCardTag_H13;
        cardObj.cardTag = 13;
    }
    else if (crdType == kCardTag_H14)
	{
        cardObj = [[[CardSprite alloc] initWithFile:@"card-H14.png"] autorelease];
        cardObj.scale = kScale;
        cardObj.hitTag = kCardTag_H14;
        cardObj.cardTag = 14;
    }
    else if (crdType == kCardTag_D2)
	{
        cardObj = [[[CardSprite alloc] initWithFile:@"card-D2.png"] autorelease];  //Diamond D
        cardObj.scale = kScale;
        cardObj.hitTag = kCardTag_D2;
        cardObj.cardTag = 2;
    }
    else if (crdType == kCardTag_D3)
	{
        cardObj = [[[CardSprite alloc] initWithFile:@"card-D3.png"] autorelease];
        cardObj.scale = kScale;
        cardObj.hitTag = kCardTag_D3;
        cardObj.cardTag = 3;
    }
    else if (crdType == kCardTag_D4)
	{
        cardObj = [[[CardSprite alloc] initWithFile:@"card-D4.png"] autorelease];
        cardObj.scale = kScale;
        cardObj.hitTag = kCardTag_D4;
        cardObj.cardTag = 4;
    }
    else if (crdType == kCardTag_D5)
	{
        cardObj = [[[CardSprite alloc] initWithFile:@"card-D5.png"] autorelease];
        cardObj.scale = kScale;
        cardObj.hitTag = kCardTag_D5;
        cardObj.cardTag = 5;
    }
    else if (crdType == kCardTag_D6)
	{
        cardObj = [[[CardSprite alloc] initWithFile:@"card-D6.png"] autorelease];
        cardObj.scale = kScale;
        cardObj.hitTag = kCardTag_D6;
        cardObj.cardTag = 6;
    }
    else if (crdType == kCardTag_D7)
	{
        cardObj = [[[CardSprite alloc] initWithFile:@"card-D7.png"] autorelease];
        cardObj.scale = kScale;
        cardObj.hitTag = kCardTag_D7;
        cardObj.cardTag = 7;
    }
    else if (crdType == kCardTag_D8)
	{
        cardObj = [[[CardSprite alloc] initWithFile:@"card-D8.png"] autorelease];
        cardObj.scale = kScale;
        cardObj.hitTag = kCardTag_D8;
        cardObj.cardTag = 8;
    }
    else if (crdType == kCardTag_D9)
	{
        cardObj = [[[CardSprite alloc] initWithFile:@"card-D9.png"] autorelease];
        cardObj.scale = kScale;
        cardObj.hitTag = kCardTag_D9;
        cardObj.cardTag = 9;
    }
    else if (crdType == kCardTag_D10)
	{
        cardObj = [[[CardSprite alloc] initWithFile:@"card-D10.png"] autorelease];
        cardObj.scale = kScale;
        cardObj.hitTag = kCardTag_D10;
        cardObj.cardTag = 10;
   }
    else if (crdType == kCardTag_D11)
	{
        cardObj = [[[CardSprite alloc] initWithFile:@"card-D11.png"] autorelease];
        cardObj.scale = kScale;
        cardObj.hitTag = kCardTag_D11;
        cardObj.cardTag = 11;
    }
    else if (crdType == kCardTag_D12)
	{
        cardObj = [[[CardSprite alloc] initWithFile:@"card-D12.png"] autorelease];
        cardObj.scale = kScale;
        cardObj.hitTag = kCardTag_D12;
        cardObj.cardTag = 12;
    }
    else if (crdType == kCardTag_D13)
	{
        cardObj = [[[CardSprite alloc] initWithFile:@"card-D13.png"] autorelease];
        cardObj.scale = kScale;
        cardObj.hitTag = kCardTag_D13;
        cardObj.cardTag = 13;
    }
    else if (crdType == kCardTag_D14)
	{
        cardObj = [[[CardSprite alloc] initWithFile:@"card-D14.png"] autorelease];
        cardObj.scale = kScale;
        cardObj.hitTag = kCardTag_D14;
        cardObj.cardTag = 14;
    }
    else if (crdType == kCardTag_C2)
	{
        cardObj = [[[CardSprite alloc] initWithFile:@"card-C2.png"] autorelease];  //Cubs
        cardObj.scale = kScale;
        cardObj.hitTag = kCardTag_C2;
        cardObj.cardTag = 2;
    }
    else if (crdType == kCardTag_C3)
	{
        cardObj = [[[CardSprite alloc] initWithFile:@"card-C3.png"] autorelease];
        cardObj.scale = kScale;
        cardObj.hitTag = kCardTag_C3;
        cardObj.cardTag = 3;
    }
    else if (crdType == kCardTag_C4)
	{
        cardObj = [[[CardSprite alloc] initWithFile:@"card-C4.png"] autorelease];
        cardObj.scale = kScale;
        cardObj.hitTag = kCardTag_C4;
        cardObj.cardTag = 4;
    }
    else if (crdType == kCardTag_C5)
	{
        cardObj = [[[CardSprite alloc] initWithFile:@"card-C5.png"] autorelease];
        cardObj.scale = kScale;
        cardObj.hitTag = kCardTag_C5;
        cardObj.cardTag = 5;
    }
    else if (crdType == kCardTag_C6)
	{
        cardObj = [[[CardSprite alloc] initWithFile:@"card-C6.png"] autorelease];
        cardObj.scale = kScale;
        cardObj.hitTag = kCardTag_C6;
        cardObj.cardTag = 6;
    }
    else if (crdType == kCardTag_C7)
	{
        cardObj = [[[CardSprite alloc] initWithFile:@"card-C7.png"] autorelease];
        cardObj.scale = kScale;
        cardObj.hitTag = kCardTag_C7;
        cardObj.cardTag = 7;
    }
    else if (crdType == kCardTag_C8)
	{
        cardObj = [[[CardSprite alloc] initWithFile:@"card-C8.png"] autorelease];
        cardObj.scale = kScale;
        cardObj.hitTag = kCardTag_C8;
        cardObj.cardTag = 8;
    }
    else if (crdType == kCardTag_C9)
	{
        cardObj = [[[CardSprite alloc] initWithFile:@"card-C9.png"] autorelease];
        cardObj.scale = kScale;
        cardObj.hitTag = kCardTag_C9;
        cardObj.cardTag = 9;
    }
    else if (crdType == kCardTag_C10)
	{
        cardObj = [[[CardSprite alloc] initWithFile:@"card-C10.png"] autorelease];
        cardObj.scale = kScale;
        cardObj.hitTag = kCardTag_C10;
        cardObj.cardTag = 10;
    }
    else if (crdType == kCardTag_C11)
	{
        cardObj = [[[CardSprite alloc] initWithFile:@"card-C11.png"] autorelease];
        cardObj.scale = kScale;
        cardObj.hitTag = kCardTag_C11;
        cardObj.cardTag = 11;
    }
    else if (crdType == kCardTag_C12)
	{
        cardObj = [[[CardSprite alloc] initWithFile:@"card-C12.png"] autorelease];
        cardObj.scale = kScale;
        cardObj.hitTag = kCardTag_C12;
        cardObj.cardTag = 12;
    }
    else if (crdType == kCardTag_C13)
	{
        cardObj = [[[CardSprite alloc] initWithFile:@"card-C13.png"] autorelease];
        cardObj.scale = kScale;
        cardObj.hitTag = kCardTag_C13;
        cardObj.cardTag = 13;
    }
    else if (crdType == kCardTag_C14)
	{
        cardObj = [[[CardSprite alloc] initWithFile:@"card-C14.png"] autorelease];
        cardObj.scale = kScale;
        cardObj.hitTag = kCardTag_C14;
        cardObj.cardTag = 14;
    }
    return cardObj;
}

@end
