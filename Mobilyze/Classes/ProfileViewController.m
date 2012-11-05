//
//  ProfileViewController.m
//  Mobilyze
//
//  Created by James Rhodes on 11/4/12.
//
//

#import "ProfileViewController.h"

@interface ProfileViewController ()

@end

@implementation ProfileViewController

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
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnLogoutClicked:(id)sender {
    NSLog(@"%@", @"Logout Clicked");
    
    DIOSUser* diosUser = [[DIOSUser alloc] init];
    [diosUser logout];
    
    [[NSUserDefaults standardUserDefaults] removeObjectForKey: @"user"];
    
    [self.slidingViewController resetTopView];
    
    self.slidingViewController.underLeftViewController  = [self.storyboard instantiateViewControllerWithIdentifier:@"Menu"];
    
    
}
@end
