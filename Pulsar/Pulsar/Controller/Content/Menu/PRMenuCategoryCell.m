//
//  PRMenuCategoryCell.m
//  Pulsar
//
//  Created by fantom on 21.01.16.
//  Copyright © 2016 TAB. All rights reserved.
//

#import "PRMenuCategoryCell.h"
#import "PRConstants.h"
#import "PRMacros.h"

@implementation PRMenuCategoryCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self setBackgroundColor:UIColorFromRGB(kHexRedTextFieldColor)];
        UIView *selectedBackgroundView = [[UIView alloc] init];
        [selectedBackgroundView setBackgroundColor:UIColorFromRGB(kHexGreenTextFieldColor)];
        [self setSelectedBackgroundView:selectedBackgroundView];
    }
    return self;
}

- (void)setCategory:(PRLocalCategory *)category
{
    _category = category;
    self.textLabel.text = category.title;
    [super setSelected:category.selected];
    [self updateAccessory];
}

- (void)updateAccessory
{
    self.accessoryType = self.category.selected ? UITableViewCellAccessoryCheckmark : UITableViewCellAccessoryNone;
}

@end
