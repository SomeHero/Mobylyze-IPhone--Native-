//
//  ActionItemCell.h
//  Mobilyze
//
//  Created by James Rhodes on 11/5/12.
//
//

#import <UIKit/UIKit.h>

@interface ActionItemCell : UITableViewCell
@property (retain, nonatomic) IBOutlet UIButton *imgLogo;
@property (retain, nonatomic) IBOutlet UILabel *lblUserName;
@property (retain, nonatomic) IBOutlet UILabel *lblTeaser;

@end
