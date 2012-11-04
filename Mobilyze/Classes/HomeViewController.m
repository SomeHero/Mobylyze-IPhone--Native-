//
//  HomeViewController.m
//  New RootsBuilder
//
//  Created by James Rhodes on 10/29/12.
//  Copyright (c) 2012 James Rhodes. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void) webViewDidFinishLoad:(UIWebView*) theWebView
{
    
    // Black base color for background matches the native apps
    theWebView.backgroundColor = [UIColor blackColor];
    
	return [super webViewDidFinishLoad:theWebView];
}

@end
