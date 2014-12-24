//
//  MyCell.m
//  UITableView_Optimize
//
//  Created by mfw on 14/12/22.
//  Copyright (c) 2014年 MFW. All rights reserved.
//

#import "MyCell.h"

@implementation MyCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.titleLbl = [[UILabel alloc] initWithFrame:CGRectMake(10, 5, self.frame.size.width-20, self.frame.size.height-10)];
        [self addSubview:self.titleLbl];
        
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)configureTest:(NSString *)str {
    self.titleLbl.text = str;
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated {
    [super setHighlighted:highlighted animated:YES];
    
    if (highlighted) {
        self.backgroundColor = [UIColor orangeColor];
    } else {
        self.backgroundColor = [UIColor lightGrayColor];
    }
}

@end
