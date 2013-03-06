//
//  AvatarViewController.h
//  AvatarShop
//
//  Created by Jagdish Prajapati on 10/02/13.
//  Copyright (c) 2013 Jagdish Prajapati. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AvatarViewController : UIViewController
{
    IBOutlet UIImageView *imgView;
}

-(IBAction)avatarShop:(id)sender;

- (IBAction)rankingListClicked:(id)sender;
- (IBAction)avtarAchievementClicked:(id)sender;
- (IBAction)avtarWarRuleClicked:(id)sender;
- (IBAction)avtarWeaponClicked:(id)sender;
- (IBAction)avtarSinglePlayerClicked:(id)sender;
- (IBAction)avtarMultiplayerClicked:(id)sender;

@end
