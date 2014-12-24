//
//  ArrayDataSource.h
//  UITableView_Optimize
//
//  Created by mfw on 14/12/22.
//  Copyright (c) 2014年 MFW. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^TableViewCellConfigureBlock)(id cell, id item);

@interface ArrayDataSource : NSObject <UITableViewDataSource>

- (id)initWithItems:(NSArray *)anItems cellIdentifier:(NSString *)cellIdentifier configureBlock:(TableViewCellConfigureBlock)configureBlock;

- (id)itemAtIndexPath:(NSIndexPath *)indexPath;

@end
