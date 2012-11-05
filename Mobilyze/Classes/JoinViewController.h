//
//  JoinViewController.h
//  Mobilyze
//
//  Created by James Rhodes on 11/4/12.
//
//

#import <UIKit/UIKit.h>
#import "DIOSUser.h"

@interface JoinViewController : UIViewController
{
    IBOutlet UITextField* txtUserName;
    IBOutlet UITextField* txtPassword;
}

- (IBAction)btnJoinClicked:(id)sender;
- (IBAction)cancelButtonClicked:(id)sender;

@end
