//
//  GameViewController.m
//  AvatarShop
//
//  Created by Jagdish Prajapati on 19/02/13.
//  Copyright (c) 2013 Jagdish Prajapati. All rights reserved.
//

#import "GameViewController.h"
#import "AppDelegate.h"
#import "GameScene.h"
#import "WarScene.h"

@interface GameViewController ()

@end

@implementation GameViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    AppController *app = (AppController *)[[UIApplication sharedApplication] delegate];
   // [app.navController popViewControllerAnimated:YES];
  //  [app.navController removeFromParentViewController];
    //Add Scene
    UIWindow* window = [[[UIApplication sharedApplication] windows] objectAtIndex:0];
//    
//	[UIView beginAnimations:nil context:nil];
//	[UIView setAnimationDuration:0.75];
	[UIView setAnimationBeginsFromCurrentState:YES];
//	[UIView setAnimationTransition:UIViewAnimationTransitionCurlDown forView:window cache:YES];

   // [self.view removeFromSuperview];

	[self.view addSubview:[CCDirector sharedDirector].view];

	[UIView commitAnimations];
    
	[[CCDirector sharedDirector] resume];
    [[CCDirector sharedDirector] startAnimation];
    
    [self performSelector:@selector(callGame) withObject:nil afterDelay:1.0];
}

-(void)callGame
{
    [[CCDirector sharedDirector] replaceScene:[GameScene scene]];

}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
{
    return (toInterfaceOrientation == UIInterfaceOrientationLandscapeLeft || toInterfaceOrientation == UIInterfaceOrientationLandscapeRight);
}


-(IBAction)backClicked:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}

@end
