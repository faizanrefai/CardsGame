//
//  WarriorViewController.h
//  AvatarShop
//
//  Created by Jagdish Prajapati on 19/02/13.
//  Copyright (c) 2013 Jagdish Prajapati. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WarriorViewController : UIViewController
{
    NSMutableArray *warriorsArray;
    
    UIButton *buttonWarrior;
    IBOutlet UIButton *selectedWarrior;
}

-(IBAction)warriorSelect:(id)sender;
-(IBAction)anyWarrior:(id)sender;
@end
