//
//  WeaponViewController.h
//  AvatarShop
//
//  Created by Jagdish Prajapati on 13/02/13.
//  Copyright (c) 2013 Jagdish Prajapati. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WeaponViewController : UIViewController <UIAlertViewDelegate>
{
    NSInteger weaponIndex;
}

-(IBAction)weaponClicked:(UIButton *)sender;

@end
