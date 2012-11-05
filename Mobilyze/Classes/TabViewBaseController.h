//
//  TabViewBaseController.h
//  Mobylyze
//
//  Created by James Rhodes on 10/29/12.
//  Copyright (c) 2012 James Rhodes. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ECSlidingViewController.h"
#import "CreateViewController.h"

@interface TabViewBaseController : ECSlidingViewController

- (IBAction)revealMenu:(id)sender;
- (IBAction)showCreateMenu:(id)sender;

@end
