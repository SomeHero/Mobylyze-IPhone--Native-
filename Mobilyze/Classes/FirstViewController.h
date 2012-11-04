//
//  FirstViewController.h
//  New RootsBuilder
//
//  Created by James Rhodes on 10/29/12.
//  Copyright (c) 2012 James Rhodes. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TabViewBaseController.h"
#import "DiosNode.h"
#import "AFHTTPRequestOperation.h"
#import "NewsItemCell.h"

@interface FirstViewController : TabViewBaseController<UITableViewDataSource, UITableViewDelegate>
{
    NSDictionary* nodes;
}
@end
