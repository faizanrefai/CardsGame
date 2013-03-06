//
//  WeaponViewController.m
//  AvatarShop
//
//  Created by Jagdish Prajapati on 13/02/13.
//  Copyright (c) 2013 Jagdish Prajapati. All rights reserved.
//

#import "WeaponViewController.h"

@interface WeaponViewController ()

@end

@implementation WeaponViewController

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

-(IBAction)weaponClicked:(UIButton *)sender
{
    weaponIndex = sender.tag;
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Weapon Selected" message:@"Do you want to select this weapon ?" delegate:self cancelButtonTitle:@"Yes" otherButtonTitles:@"No", nil];
    [alertView show];
    alertView.tag = 200;
    [alertView release];
}

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (buttonIndex == 0)
    {
        [self.navigationController popViewControllerAnimated:YES];
    }
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

@end
