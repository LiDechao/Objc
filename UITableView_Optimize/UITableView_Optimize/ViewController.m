//
//  ViewController.m
//  UITableView_Optimize
//
//  Created by mfw on 14/12/22.
//  Copyright (c) 2014年 MFW. All rights reserved.
//

#import "ViewController.h"
#import "MyCell.h"
#import "ArrayDataSource.h"
#import "MyCell+Configure.h"

static NSString * const CellIdentifier = @"ID";

@interface ViewController () <UITableViewDelegate>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSArray *dataArray;
//@property (nonatomic, strong) ArrayDataSource *dataArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.dataArray = @[@"1", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"0"];
    
    self.tableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStylePlain];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.view addSubview:self.tableView];
    
//    TableViewCellConfigureBlock configureBlock = ^(MyCell *cell, NSString *str){
//        [cell configureTest:str];
//    };
    
//    self.dataArray = [[ArrayDataSource alloc] initWithItems:@[@"1", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"0"] cellIdentifier:CellIdentifier configureBlock:configureBlock];
    
//    self.dataArray = [[ArrayDataSource alloc] initWithItems:@[@"1", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"0"] cellIdentifier:CellIdentifier configureBlock:^(MyCell *cell, NSString *str){
//        [cell configureTest:str];
//    }];
//    
//    self.tableView.dataSource = self.dataArray;
//    [self.tableView registerClass:[MyCell class] forCellReuseIdentifier:CellIdentifier];
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    MyCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[MyCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
//    cell.titleLbl.text = [self.dataArray objectAtIndex:indexPath.row];
    [cell setAddTest:[self.dataArray objectAtIndex:indexPath.row]];
    
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataArray.count;
}


@end
