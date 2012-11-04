//
//  SecondViewController.m
//  New RootsBuilder
//
//  Created by James Rhodes on 10/29/12.
//  Copyright (c) 2012 James Rhodes. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    DIOSNode* diosNode = [[DIOSNode alloc] init];
    
    nodes =  [diosNode eventsGetIndex];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [nodes count];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    EventsTableCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[EventsTableCell alloc] initWithFrame:CGRectZero reuseIdentifier:CellIdentifier] autorelease];
    }
    
    // Set up the cell...
    cell.lblTitle.text = [[nodes objectAtIndex:indexPath.row] objectForKey: @"title"];
    
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
