//
//  GameScene.m
//  WarGame
//
//  Created by Jagdish on 12/12/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "GameScene.h"
#import "CardSprite.h"

#define kMySpriteTag  101
#define kCPUSpriteTag 102

@implementation GameScene


+(CCScene *) scene
{
	CCScene *scene = [CCScene node];
	GameScene *layer = [GameScene node];
	[scene addChild: layer];
    [scene draw];
	return scene;
}

// on "init" you need to initialize your instance
-(id) init
{
	if( (self=[super init])) 
    {
        self.isTouchEnabled = YES;
        [[CCDirector sharedDirector].touchDispatcher addTargetedDelegate:self priority:1 swallowsTouches:YES];
        
        winSize = [[CCDirector sharedDirector] winSize];
        CCSprite *spriteBack = [CCSprite spriteWithFile:@"table.png"];
        spriteBack.position = ccp(winSize.width/2, winSize.height/2);
        spriteBack.scale = 0.7;
        [self addChild:spriteBack z:0];
        
        myCounter = 0;
        cpuCounter = 0;
        
        lblMyCardNumber = [CCLabelTTF labelWithString:[NSString stringWithFormat:@"%d",myCounter] fontName:@"Marker Felt" fontSize:20];
  		lblMyCardNumber.position =  ccp(winSize.width /2 - 100, winSize.height/2 - 150);
		[self addChild:lblMyCardNumber z:2];
        
        lblCPUCardNumber = [CCLabelTTF labelWithString:[NSString stringWithFormat:@"%d",cpuCounter] fontName:@"Marker Felt" fontSize:20];
  		lblCPUCardNumber.position =  ccp(winSize.width /2 - 100, winSize.height/2 + 150);
		[self addChild:lblCPUCardNumber z:2];
        
        
        turnLimitTimer = 0;
        lblMyCardTurnCount = [CCLabelTTF labelWithString:[NSString stringWithFormat:@"%d",turnLimitTimer] fontName:@"Marker Felt" fontSize:20];
  		lblMyCardTurnCount.position =  ccp(winSize.width /2 + 100, winSize.height/2 - 150);
		[self addChild:lblMyCardTurnCount z:2];
        
        lblCPUCardTurnCount = [CCLabelTTF labelWithString:[NSString stringWithFormat:@"%d",turnLimitTimer] fontName:@"Marker Felt" fontSize:20];
  		lblCPUCardTurnCount.position =  ccp(winSize.width /2 + 100, winSize.height/2 + 150);
		[self addChild:lblCPUCardTurnCount z:2];


        aryCpuCard = [[NSMutableArray alloc] init];
        aryPlayerCard = [[NSMutableArray alloc] init];
        cardIndexCPU = 0;
        cardIndexMY = 0;
        
        isTurnCheckMY = YES;
        
        [self setUpPlayers];
        [self divideCardsInTwoPlayer];
        
        turnTimer = 1;
        isMyTurn = YES;
        isTurnCheckMY = YES;
        
        countIndex = 0;
        [self scheduleUpdate];
	}
	return self;
}

-(void)update:(ccTime *)dt
{
    if (isTurnCheckMY)
    {
        lblMyCardTurnCount.visible = YES;
        int timeDisplay = turnLimitTimer % 10;
        lblMyCardTurnCount.string = [NSString stringWithFormat:@"%d",timeDisplay];
        lblCPUCardTurnCount.visible = NO;
    }
    else
    {
        lblCPUCardTurnCount.visible = YES;
        int timeDisplay = turnLimitTimer % 10;
        lblCPUCardTurnCount.string = [NSString stringWithFormat:@"%d",timeDisplay];
        lblMyCardTurnCount.visible = NO;
    }
    
    if (countIndex == 2)
    {
        countIndex = 0;
        [self performSelector:@selector(checkCardWithHighest) withObject:nil afterDelay:2.0];
    }
}

-(void)setUpPlayers
{
    CCSprite *cpuSprite = [CCSprite spriteWithFile:@"cpuCards.png"];
    CCSprite *cpuSprite1 = [CCSprite spriteWithFile:@"cpuCards.png"];
    cMenu = [CCMenuItemSprite itemFromNormalSprite:cpuSprite selectedSprite:cpuSprite1 target:self selector:@selector(cpuCardTurn)];
    CCMenu *cpuMenu = [CCMenu menuWithItems:cMenu, nil];
    cpuMenu.position = ccp(winSize.width/2 - (1 * 5), winSize.height/2 + 180);
    [self addChild:cpuMenu z:5];
    
    
    CCSprite *cpuSprite11 = [CCSprite spriteWithFile:@"cpuCards.png"];
    cpuSprite11.position = ccp(winSize.width/2 - (1 * 5), winSize.height/2 + 180);
    [self addChild:cpuSprite11 z:4];
    
    
    CCSprite *mySprite = [CCSprite spriteWithFile:@"myCards.png"];
    CCSprite *mySprite1 = [CCSprite spriteWithFile:@"myCards.png"];
    mMenu = [CCMenuItemSprite itemFromNormalSprite:mySprite selectedSprite:mySprite1 target:self selector:@selector(myTurnClicked)];
    CCMenu *myMenu = [CCMenu menuWithItems:mMenu, nil];
    myMenu.position = ccp(winSize.width/2 - (1 * 5), winSize.height/2 - 180);
    [self addChild:myMenu z:5];
    
    CCSprite *mySprite11 = [CCSprite spriteWithFile:@"myCards.png"];
    mySprite11.position = ccp(winSize.width/2 - (1 * 5), winSize.height/2 - 180);
    [self addChild:mySprite11 z:4];
}

#pragma mark Player Clicked
-(void)myTurnClicked
{
    //8 , 21
    int cNumber = [[aryPlayerCard objectAtIndex:cardIndexMY] intValue];
//    int cNumber = 8;
    cardObjMY = [CardSprite cardWithType:cNumber];
    cardObjMY.position = ccp(winSize.width/2, winSize.height/2 - 50);
    cardObjMY.tag = cNumber;
    [self addChild:cardObjMY z:1 tag:201];
    cardIndexMY++;
    NSLog(@"My Turn Click");
    
    mMenu.visible = NO;
    cMenu.visible = YES;
    countIndex++;
    
    isTurnCheckMY = NO;
}

-(void)cpuCardTurn
{
    int cNumber = [[aryCpuCard objectAtIndex:cardIndexCPU] intValue];
//    int cNumber = 21;
    cardObjCPU = [CardSprite cardWithType:cNumber];
    cardObjCPU.position = ccp(winSize.width/2, winSize.height/2 + 40);
    cardObjCPU.tag = cNumber;
    [self addChild:cardObjCPU z:1 tag:202];
    cardIndexCPU++;
    NSLog(@"CPU Turn Click");
    
    cMenu.visible = NO;
    mMenu.visible = YES;
    countIndex++;
    
    isTurnCheckMY = YES;
}



#pragma mark Card Checking With Highest Priority
-(void)checkCardWithHighest
{
    countIndex = 0;
    NSLog(@"Csrd My : %d ** CPU : %d",cardObjMY.cardTag, cardObjCPU.cardTag);
    myCounter--;
    cpuCounter--;
    countIndex = 0;
    if(cardObjCPU.cardTag == cardObjMY.cardTag) //WAR
    {
        NSLog(@"War Game Generated");
        [self callWarCards];
    }
    else if(cardObjMY.cardTag < cardObjCPU.cardTag) //CPU WIN
    {
        isTurnCheckMY = NO;
        cpuCounter = cpuCounter + 2;
        
        id actionMove = [CCMoveTo actionWithDuration:0.5 position:ccp(winSize.width/2 - (1 * 5), winSize.height/2 + 180)];
        CCSequence *sequence = [CCSequence actions:actionMove,[CCCallFunc actionWithTarget:self selector:@selector(cardObjectCPUMoved)], nil];
        [cardObjCPU runAction:sequence];
        
        id actionMove1 = [CCMoveTo actionWithDuration:0.5 position:ccp(winSize.width/2 - (1 * 5), winSize.height/2 + 180)];
        CCSequence *sequence1 = [CCSequence actions:actionMove1,[CCCallFunc actionWithTarget:self selector:@selector(cardObjectMYMoved)], nil];
        [cardObjMY runAction:sequence1];
    }
    else if(cardObjMY.cardTag > cardObjCPU.cardTag) //MY WIN
    {
        isTurnCheckMY = YES;
        myCounter = myCounter + 2;
        
        id actionMove = [CCMoveTo actionWithDuration:0.5 position:ccp(winSize.width/2 + (1 * 5), winSize.height/2 - 180)];
        CCSequence *sequence = [CCSequence actions:actionMove,[CCCallFunc actionWithTarget:self selector:@selector(cardObjectCPUMoved)], nil];
        [cardObjCPU runAction:sequence];
        
        id actionMove1 = [CCMoveTo actionWithDuration:0.5 position:ccp(winSize.width/2 + (1 * 5), winSize.height/2 - 180)];
        CCSequence *sequence1 = [CCSequence actions:actionMove1,[CCCallFunc actionWithTarget:self selector:@selector(cardObjectMYMoved)], nil];
        [cardObjMY runAction:sequence1];
    }
    
    lblCPUCardNumber.string = [NSString stringWithFormat:@"%d",cpuCounter];
    lblMyCardNumber.string = [NSString stringWithFormat:@"%d",myCounter];
    NSLog(@"Count My : %d ** CPU : %d",myCounter, cpuCounter);
}

-(void)cardObjectCPUMoved
{
    [self removeChild:cardObjCPU cleanup:YES];
    if ([self getChildByTag:202])
    {
        CCSprite *sprite = (CCSprite *)[self getChildByTag:202];
        [self removeChild:sprite cleanup:YES];
    }
}

-(void)cardObjectMYMoved
{
    [self removeChild:cardObjMY cleanup:YES];
    if ([self getChildByTag:201])
    {
        CCSprite *sprite = (CCSprite *)[self getChildByTag:201];
        [self removeChild:sprite cleanup:YES];
    }

    
    if ([self getChildByTag:101])
    {
        CCSprite *sprite = (CCSprite *)[self getChildByTag:101];
        [self removeChild:sprite cleanup:YES];
    }
    
    if ([self getChildByTag:102])
    {
        CCSprite *sprite = (CCSprite *)[self getChildByTag:102];
        [self removeChild:sprite cleanup:YES];
    }
    
}

#pragma mark
#pragma mark War Game
-(void)callWarCards
{
    warArray = [[NSMutableArray alloc] init];
    
    for (int b = 1; b <= 3; b++) //My
    {
        int cNumber = [[aryPlayerCard objectAtIndex:cardIndexMY] intValue];
        [warArray addObject:[NSNumber numberWithInt:cNumber]];
    }
    
    CCSprite *cardObjMY1 = [CCSprite spriteWithFile:@"myCards.png"];
    cardObjMY1.position = ccp(winSize.width/2, winSize.height/2 - 80);
    [self addChild:cardObjMY1 z:1 tag:101];
    cardIndexMY++;
    NSLog(@"My Turn Click");
    myCounter--;

    
    
    for (int a = 1; a <= 3; a++) //Cpu
    {
        int cNumber = [[aryCpuCard objectAtIndex:cardIndexCPU] intValue];
        [warArray addObject:[NSNumber numberWithInt:cNumber]];
    }
    
    CCSprite *cardObjCPU1 = [CCSprite spriteWithFile:@"cpuCards.png"];
    cardObjCPU1.position = ccp(winSize.width/2, winSize.height/2 + 70);
    [self addChild:cardObjCPU1 z:1 tag:102];
    cardIndexCPU++;
    NSLog(@"CPU Turn Click");
    cpuCounter--;

    
    int cNumber = [[aryPlayerCard objectAtIndex:cardIndexMY] intValue];
    cardObjMY = [CardSprite cardWithType:cNumber];
    cardObjMY.position = ccp(winSize.width/2, winSize.height/2 - 100);
    cardObjMY.tag = cNumber;
    [self addChild:cardObjMY z:1];
    cardIndexMY++;
    myCounter--;
    
    int cNumberCPU = [[aryCpuCard objectAtIndex:cardIndexCPU] intValue];
    cardObjCPU = [CardSprite cardWithType:cNumberCPU];
    cardObjCPU.position = ccp(winSize.width/2, winSize.height/2 + 90);
    cardObjCPU.tag = cNumberCPU;
    [self addChild:cardObjCPU z:1];
    cardIndexCPU++;
    cpuCounter--;
    NSLog(@"CPU Turn Click");
    
    [self performSelector:@selector(decideWarGame) withObject:nil afterDelay:2.0];
}

-(void)decideWarGame
{
    if(cardObjMY.cardTag < cardObjCPU.cardTag) //CPU WIN
    {
        isTurnCheckMY = NO;
        cpuCounter = cpuCounter + 8;
        
        id actionMove = [CCMoveTo actionWithDuration:0.5 position:ccp(winSize.width/2 - (1 * 5), winSize.height/2 + 180)];
        CCSequence *sequence = [CCSequence actions:actionMove,[CCCallFunc actionWithTarget:self selector:@selector(cardObjectCPUMoved)], nil];
        [cardObjCPU runAction:sequence];
        
        id actionMove1 = [CCMoveTo actionWithDuration:0.5 position:ccp(winSize.width/2 - (1 * 5), winSize.height/2 + 180)];
        CCSequence *sequence1 = [CCSequence actions:actionMove1,[CCCallFunc actionWithTarget:self selector:@selector(cardObjectMYMoved)], nil];
        [cardObjMY runAction:sequence1];
    }
    else if(cardObjMY.cardTag > cardObjCPU.cardTag) //MY WIN
    {
        isTurnCheckMY = YES;
        myCounter = myCounter + 8;
        
        id actionMove = [CCMoveTo actionWithDuration:0.5 position:ccp(winSize.width/2 + (1 * 5), winSize.height/2 - 180)];
        CCSequence *sequence = [CCSequence actions:actionMove,[CCCallFunc actionWithTarget:self selector:@selector(cardObjectCPUMoved)], nil];
        [cardObjCPU runAction:sequence];
        
        id actionMove1 = [CCMoveTo actionWithDuration:0.5 position:ccp(winSize.width/2 + (1 * 5), winSize.height/2 - 180)];
        CCSequence *sequence1 = [CCSequence actions:actionMove1,[CCCallFunc actionWithTarget:self selector:@selector(cardObjectMYMoved)], nil];
        [cardObjMY runAction:sequence1];
    }
    else
    {
        NSLog(@"Again War Called");
    }
    
    lblCPUCardNumber.string = [NSString stringWithFormat:@"%d",cpuCounter];
    lblMyCardNumber.string = [NSString stringWithFormat:@"%d",myCounter];
    NSLog(@"Count My : %d ** CPU : %d",myCounter, cpuCounter);
}


#pragma mark
#pragma mark Touch Began
-(BOOL)ccTouchBegan:(UITouch *)touch withEvent:(UIEvent *)event
{
    return YES;
}



#pragma mark 
#pragma mark Random Number Generaates
-(void)divideCardsInTwoPlayer
{
    int i;
    int a = 0;
    
    srand (time (NULL));
    i = [self myRandom:53];
    while (i >= 0)
    {
        a++;
//        NSLog(@"Number = %3d\n", i);
        i = [self myRandom:-1];
        if (i == -1)
        {
            break;
        }
        else if (i == 0)
        {
            a--;
        }
        else
        {
            if (a % 2 == 0)
            {
                [aryCpuCard addObject:[NSNumber numberWithInt:i]];
                cpuCounter++;
            }
            else
            {
                [aryPlayerCard addObject:[NSNumber numberWithInt:i]];
                myCounter++;
            }
        }
    }
    
    lblCPUCardNumber.string = [NSString stringWithFormat:@"%d",cpuCounter];
    lblMyCardNumber.string = [NSString stringWithFormat:@"%d",myCounter];
    
//    NSLog(@"Final  = %3d\n *** ary cpu : %@ :: %d *** ary player %@ :: %d", i,aryCpuCard, [aryCpuCard count], aryPlayerCard, [aryPlayerCard count]);
}

-(int)myRandom:(int)size
{
    int i, n;
    static int numNums = 0;
    static int *numArr = NULL;
    
    if (size >= 0)
    {
        if (numArr != NULL)
        {
            free (numArr);
        }
        
        if ((numArr = malloc (sizeof(int) * size)) == NULL)
        {
            return -1;
        }
        
        for (i = 0; i  < size; i++)
        {
            numArr[i] = i;
        }
        numNums = size;
    }
    
    
    if (numNums == 0)
    {
        return -1;
    }
    
    n = rand() % numNums;
    i = numArr[n];
    numArr[n] = numArr[numNums-1];
    numNums--;
    if (numNums == 0)
    {
        free (numArr);
        numArr = 0;
    }
    
    return i;
}

#pragma mark Memory Management
-(void)dealloc
{
	[super dealloc];
}


@end
