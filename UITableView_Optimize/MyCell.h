//
//  MyCell.h
//  UITableView_Optimize
//
//  Created by mfw on 14/12/22.
//  Copyright (c) 2014年 MFW. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyCell : UITableViewCell

@property (nonatomic, strong) UILabel *titleLbl;

- (void)configureTest:(NSString *)str ;

@end

