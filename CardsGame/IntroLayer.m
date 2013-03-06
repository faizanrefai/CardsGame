//
//  IntroLayer.m
//  CardsGame
//
//  Created by Jagdish Prajapati on 20/02/13.
//  Copyright __MyCompanyName__ 2013. All rights reserved.
//


// Import the interfaces
#import "IntroLayer.h"
#import "HelloWorldLayer.h"
#import "MainViewController.h"
#import "AppDelegate.h"


#pragma mark - IntroLayer

// HelloWorldLayer implementation
@implementation IntroLayer

// Helper class method that creates a Scene with the HelloWorldLayer as the only child.
+(CCScene *) scene
{
	// 'scene' is an autorelease object.
	CCScene *scene = [CCScene node];
	
	// 'layer' is an autorelease object.
	IntroLayer *layer = [IntroLayer node];
	
	// add layer as a child to scene
	[scene addChild: layer];
	
	// return the scene
	return scene;
}

// 
-(void) onEnter
{
	[super onEnter];

	// ask director for the window size
	CGSize size = [[CCDirector sharedDirector] winSize];

	CCSprite *background;
	
	if( UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone ) {
		background = [CCSprite spriteWithFile:@"Default.png"];
		background.rotation = 90;
	} else {
		background = [CCSprite spriteWithFile:@"Default-Landscape~ipad.png"];
	}
	background.position = ccp(size.width/2, size.height/2);

	// add the label as a child to this Layer
	[self addChild: background];
	
	// In one second transition to the new scene
	[self scheduleOnce:@selector(makeTransition:) delay:1];
}

-(void) makeTransition:(ccTime)dt
{
    
	[[CCDirector sharedDirector] pause];
    
//	UIWindow* window = [[[UIApplication sharedApplication] windows] objectAtIndex:0];
//    
//	[UIView beginAnimations:nil context:nil];
//	[UIView setAnimationDuration:0.75];
//	[UIView setAnimationBeginsFromCurrentState:YES];
//	[UIView setAnimationTransition:UIViewAnimationTransitionCurlUp forView:window cache:YES];
//	[[CCDirector sharedDirector].view removeFromSuperview];
    
    mainviewObj = [[MainViewController alloc] initWithNibName:@"MainViewController" bundle:[NSBundle mainBundle]];
//	mainviewObj.view.hidden = false;
//    
//	[window addSubview:mainviewObj.view];
    
    
    AppController *app = (AppController *)[[UIApplication sharedApplication] delegate];
    [app.navController pushViewController:mainviewObj animated:YES];
    
//	[UIView commitAnimations];
}
@end
