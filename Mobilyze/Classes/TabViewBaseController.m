//
//  TabViewBaseController.m
//  Mobylyze
//
//  Created by James Rhodes on 10/29/12.
//  Copyright (c) 2012 James Rhodes. All rights reserved.
//

#import "TabViewBaseController.h"

@interface TabViewBaseController ()

@end

@implementation TabViewBaseController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    // shadowPath, shadowOffset, and rotation is handled by ECSlidingViewController.
    // You just need to set the opacity, radius, and color.
    self.view.layer.shadowOpacity = 0.75f;
    self.view.layer.shadowRadius = 10.0f;
    self.view.layer.shadowColor = [UIColor orangeColor].CGColor;
    
    NSDictionary* user = [[NSUserDefaults standardUserDefaults] dictionaryForKey:@"user"];
    
    if(user == nil) {
        self.slidingViewController.underLeftViewController  = [self.storyboard instantiateViewControllerWithIdentifier:@"Menu"];
    }
    else {
        self.slidingViewController.underLeftViewController  = [self.storyboard instantiateViewControllerWithIdentifier:@"Profile"];
    }

    [self.view addGestureRecognizer:self.slidingViewController.panGesture];
    [self.slidingViewController setAnchorRightRevealAmount:280.0f];
}
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)revealMenu:(id)sender
{
    NSDictionary* user = [[NSUserDefaults standardUserDefaults] dictionaryForKey:@"user"];

    [self.slidingViewController anchorTopViewTo:ECRight];
}

- (IBAction)showCreateMenu:(id)sender;
{
    CreateViewController* controller = [[CreateViewController alloc] init];
    
    [self.navigationController pushViewController:controller animated:YES];
    
    [controller release];
}

@end
