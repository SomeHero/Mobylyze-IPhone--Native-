//
//  ActionsViewController.m
//  New RootsBuilder
//
//  Created by James Rhodes on 10/29/12.
//  Copyright (c) 2012 James Rhodes. All rights reserved.
//

#import "ActionsViewController.h"

@interface ActionsViewController ()

@end

@implementation ActionsViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    DIOSNode* diosNode = [[DIOSNode alloc] init];
    
    nodes =  [diosNode newsGetIndex];
    
    NSLog(@"%@", nodes);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return @"All Actions";
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 80;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [nodes count];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    ActionItemCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[ActionItemCell alloc] initWithFrame:CGRectZero reuseIdentifier:CellIdentifier] autorelease];
    }
    
    // Set up the cell...
    cell.lblUserName.text = [[nodes objectAtIndex:indexPath.row] objectForKey: @"title"];
    
    UIImage* logo = [UIImage imageWithData: [NSData dataWithContentsOfURL: [NSURL URLWithString: [[nodes objectAtIndex:indexPath.row] objectForKey: @"logo"]]]];
    [cell.imgLogo setBackgroundImage: logo forState:UIControlStateNormal];
    
    cell.lblTeaser.text = [[nodes objectAtIndex:indexPath.row] objectForKey: @"teaser"];
    
    
    return cell;
}
//dealloc method declared in RootViewController.m
- (void)dealloc {
    
    [nodes release];
    [super dealloc];
}

@end
