//
//  DonateViewController.m
//  New RootsBuilder
//
//  Created by James Rhodes on 10/29/12.
//  Copyright (c) 2012 James Rhodes. All rights reserved.
//

#import "DonateViewController.h"

@interface DonateViewController ()

@end

@implementation DonateViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    DIOSNode* diosNode = [[DIOSNode alloc] init];
    
    organizationsInNetwork = [diosNode organizationsGetIndex];
    otherOrganizations = [organizationsInNetwork copy];
    
    allOrganizations = [[NSMutableArray alloc] init];
    [allOrganizations addObject:organizationsInNetwork];
    [allOrganizations addObject:otherOrganizations];
    
    NSLog(@"%@", allOrganizations);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    if(section == 0)
        return @"Organizations in Your Network";
    
    if(section == 1)
        return @"Organization You Might Like";
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 80;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return [allOrganizations count];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [[allOrganizations objectAtIndex: section] count];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if(indexPath.section == 0)
    {

            static NSString *CellIdentifier = @"Cell";
    
            DonateOrganizationItemCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
            if (cell == nil) {
            cell = [[[DonateOrganizationItemCell alloc] initWithFrame:CGRectZero reuseIdentifier:CellIdentifier]    autorelease];
            }
    
            // Set up the cell...
            cell.lblName.text = [[[allOrganizations objectAtIndex: indexPath.section] objectAtIndex:indexPath.row] objectForKey: @"name"];

            UIImage* logo = [UIImage imageWithData: [NSData dataWithContentsOfURL: [NSURL URLWithString: [[[allOrganizations objectAtIndex: indexPath.section]  objectAtIndex:indexPath.row] objectForKey: @"logo"]]]];
            [cell.imgLogo setBackgroundImage: logo forState:UIControlStateNormal];
        
            return cell;
    } else {
            
            static NSString *CellIdentifier = @"Cell";
            
            DonateOrganizationItemCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
            if (cell == nil) {
                cell = [[[DonateOrganizationItemCell alloc] initWithFrame:CGRectZero reuseIdentifier:CellIdentifier]    autorelease];
            }
            
            // Set up the cell...
            cell.lblName.text = [[[allOrganizations objectAtIndex: indexPath.section] objectAtIndex:indexPath.row ] objectForKey: @"name"];
            
            UIImage* logo = [UIImage imageWithData: [NSData dataWithContentsOfURL: [NSURL URLWithString: [[[allOrganizations objectAtIndex: indexPath.section]  objectAtIndex:indexPath.row] objectForKey: @"logo"]]]];
            [cell.imgLogo setBackgroundImage: logo forState:UIControlStateNormal];
            
            return cell;
    }
}
@end
