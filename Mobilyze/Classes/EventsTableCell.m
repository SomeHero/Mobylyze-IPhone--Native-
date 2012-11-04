//
//  EventsTableCell.m
//  Mobilyze
//
//  Created by James Rhodes on 11/4/12.
//
//

#import "EventsTableCell.h"

@implementation EventsTableCell

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
    [_lblTeaser release];
    [_imgLogo release];
    [_imgLogo release];
    [super dealloc];
}
@end
