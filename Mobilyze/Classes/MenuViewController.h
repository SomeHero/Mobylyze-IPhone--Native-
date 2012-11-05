//
//  MenuViewController.h
//  ECSlidingViewController
//
//  Created by Michael Enriquez on 1/23/12.
//  Copyright (c) 2012 EdgeCase. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ECSlidingViewController.h"
#import "DIOSUser.h"

@interface MenuViewController : UIViewController <UITableViewDataSource, UITabBarControllerDelegate>
{
    IBOutlet UITextField* txtUserName;
    IBOutlet UITextField* txtPassword;
}

- (IBAction)btnLoginClicked:(id)sender;

@end
