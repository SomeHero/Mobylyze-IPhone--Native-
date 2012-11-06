//
//  ActionItemCell.m
//  Mobilyze
//
//  Created by James Rhodes on 11/5/12.
//
//

#import "ActionItemCell.h"

@implementation ActionItemCell

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
    [_imgLogo release];
    [_lblUserName release];
    [_lblTeaser release];
    [super dealloc];
}
@end
