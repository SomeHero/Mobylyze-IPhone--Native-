//
//  DonateViewController.h
//  New RootsBuilder
//
//  Created by James Rhodes on 10/29/12.
//  Copyright (c) 2012 James Rhodes. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TabViewBaseController.h"
#import "DiosNode.h"
#import "AFHTTPRequestOperation.h"
#import "DonateOrganizationItemCell.h"
#import "DonateOrganizationHeaderCell.h"

@interface DonateViewController : TabViewBaseController<UITableViewDataSource, UITableViewDelegate>
{
    NSMutableArray* allOrganizations;
    NSDictionary* organizationsInNetwork;
    NSDictionary* otherOrganizations;
}
@end
