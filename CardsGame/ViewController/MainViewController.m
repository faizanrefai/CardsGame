//
//  MainViewController.m
//  AvatarShop
//
//  Created by Jagdish Prajapati on 19/02/13.
//  Copyright (c) 2013 Jagdish Prajapati. All rights reserved.
//

#import "MainViewController.h"
#import "AvatarViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

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
    self.navigationController.navigationBarHidden = YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)enterClicked:(id)sender
{
    AvatarViewController *avtarObj = [[AvatarViewController alloc] initWithNibName:@"AvatarViewController" bundle:[NSBundle mainBundle]];
    [self.navigationController pushViewController:avtarObj animated:YES];
}

-(BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
{
    return (toInterfaceOrientation == UIInterfaceOrientationLandscapeLeft || toInterfaceOrientation == UIInterfaceOrientationLandscapeRight);
}
@end
