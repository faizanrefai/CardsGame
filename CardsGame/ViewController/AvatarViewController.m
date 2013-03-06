//
//  AvatarViewController.m
//  AvatarShop
//
//  Created by Jagdish Prajapati on 10/02/13.
//  Copyright (c) 2013 Jagdish Prajapati. All rights reserved.
//

#import "AvatarViewController.h"
#import "WeaponViewController.h"
#import "GameViewController.h"
#import "AvatarShopViewController.h"
#import "WarriorViewController.h"

@implementation AvatarViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationController.navigationBarHidden = YES;
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)avatarShop:(id)sender
{
//    imgView.image = [UIImage imageNamed:@"WAR_Avtar_Shop_1 copy.png"];
    AvatarShopViewController *avtarObj = [[AvatarShopViewController alloc] initWithNibName:@"AvatarShopViewController" bundle:[NSBundle mainBundle]];
    [self.navigationController pushViewController:avtarObj animated:YES];
}


-(IBAction)rankingListClicked:(id)sender
{
    
}

-(IBAction)avtarAchievementClicked:(id)sender
{
    
}

-(IBAction)avtarWarRuleClicked:(id)sender
{
    
}

-(IBAction)avtarWeaponClicked:(id)sender
{
    WeaponViewController *weapObj = [[WeaponViewController alloc] initWithNibName:@"WeaponViewController" bundle:[NSBundle mainBundle]];
    [self.navigationController pushViewController:weapObj animated:YES];
}

-(IBAction)avtarSinglePlayerClicked:(id)sender //player vs warrior
{
    WarriorViewController *warobj = [[WarriorViewController alloc] initWithNibName:@"WarriorViewController" bundle:[NSBundle mainBundle]];
    [self.navigationController pushViewController:warobj animated:YES];
}

- (IBAction)avtarMultiplayerClicked:(id)sender //player vs player
{
    GameViewController *gameObj = [[GameViewController alloc] initWithNibName:@"GameViewController" bundle:[NSBundle mainBundle]];
    [self.navigationController pushViewController:gameObj animated:YES];
}

-(BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
{
    return (toInterfaceOrientation == UIInterfaceOrientationLandscapeLeft || toInterfaceOrientation == UIInterfaceOrientationLandscapeRight);
}


- (void)dealloc {
    [super dealloc];
}
@end
