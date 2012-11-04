//
//  NewsItemCell.h
//  Mobilyze
//
//  Created by James Rhodes on 11/4/12.
//
//

#import <UIKit/UIKit.h>

@interface NewsItemCell : UITableViewCell
    @property (retain, nonatomic) IBOutlet UILabel *lblTitle;
@property (retain, nonatomic) IBOutlet UIButton *imgLogo;
@property (retain, nonatomic) IBOutlet UILabel *lblTeaser;

@end
