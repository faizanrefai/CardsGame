//
//  WarriorViewController.m
//  AvatarShop
//
//  Created by Jagdish Prajapati on 19/02/13.
//  Copyright (c) 2013 Jagdish Prajapati. All rights reserved.
//

#import "WarriorViewController.h"
#import "GameViewController.h"

@implementation WarriorViewController

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
    warriorsArray = [[NSMutableArray alloc] init];
    
    selectedWarrior.hidden = YES;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)setScrollWithWarrior
{
    
}

-(IBAction)warriorSelect:(id)sender
{
    GameViewController *gameObj = [[GameViewController alloc] initWithNibName:@"GameViewController" bundle:[NSBundle mainBundle]];
    [self.navigationController pushViewController:gameObj animated:YES];
}

-(IBAction)anyWarrior:(id)sender
{
    selectedWarrior.hidden = NO;
    [selectedWarrior setBackgroundImage:[UIImage imageNamed:@"spartans.png"] forState:UIControlStateNormal];
}

-(BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
{
    return (toInterfaceOrientation == UIInterfaceOrientationLandscapeLeft || toInterfaceOrientation == UIInterfaceOrientationLandscapeRight);
}



@end
