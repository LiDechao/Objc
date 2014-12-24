//
//  ArrayDataSource.m
//  UITableView_Optimize
//
//  Created by mfw on 14/12/22.
//  Copyright (c) 2014年 MFW. All rights reserved.
//

#import "ArrayDataSource.h"

@interface ArrayDataSource ()

@property (nonatomic, strong) NSArray *items;
@property (nonatomic, strong) NSString *cellIdentifier;
@property (nonatomic, strong) TableViewCellConfigureBlock configureBlock;

@end

@implementation ArrayDataSource

- (id)initWithItems:(NSArray *)anItems cellIdentifier:(NSString *)cellIdentifier configureBlock:(TableViewCellConfigureBlock)configureBlock {
    if (self = [super init]) {
        self.items = anItems;
        self.cellIdentifier = cellIdentifier;
        self.configureBlock = configureBlock;
    }
    return self;
}

- (id)itemAtIndexPath:(NSIndexPath *)indexPath {
    return self.items[indexPath.row];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:self.cellIdentifier];
    id item = [self itemAtIndexPath:indexPath];
    self.configureBlock(cell, item);
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.items.count;
}

@end
