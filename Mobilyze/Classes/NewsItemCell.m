//
//  NewsItemCell.m
//  Mobilyze
//
//  Created by James Rhodes on 11/4/12.
//
//

#import "NewsItemCell.h"

@implementation NewsItemCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)dealloc {
    [_lblTitle release];
    [_imgLogo release];
    [_imgLogo release];
    [_lblTeaser release];
    [super dealloc];
}
@end
