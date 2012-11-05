//
//  JoinViewController.m
//  Mobilyze
//
//  Created by James Rhodes on 11/4/12.
//
//

#import "JoinViewController.h"

@interface JoinViewController ()

@end

@implementation JoinViewController

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
- (IBAction)btnJoinClicked:(id)sender {
    NSString* emailAddress =txtUserName.text;
    NSString* password = txtPassword.text;
    
    DIOSUser *user  = [[DIOSUser alloc] init];
    NSMutableDictionary *userData = [NSMutableDictionary new];
    [userData setValue:emailAddress forKey:@"name"];
    [userData setValue:password forKey:@"pass"];
    [userData setValue:emailAddress forKey:@"mail"];
    
    NSDictionary* dict = [user userSave: userData];
    [user release];
    
    NSLog(@"%@", dict);
}
- (IBAction)cancelButtonClicked:(id)sender {
    [self dismissModalViewControllerAnimated:YES];
}

@end
