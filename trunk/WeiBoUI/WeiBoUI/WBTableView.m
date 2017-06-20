//
//  WBTableView.m
//  WeiBoUI
//
//  Created by gaoyou on 17/6/19.
//  Copyright © 2017年 xin. All rights reserved.
//

#import "WBTableView.h"
#import "WBTableViewCell.h"

@implementation WBTableView

+ (instancetype)tableViewWithFrame:(CGRect)frame delegate:(id<UITableViewDelegate,UITableViewDataSource>)delegate{
    WBTableView *tableView = [[self alloc] initWithFrame:frame style:UITableViewStylePlain];
    [tableView setDataSource:delegate];
    [tableView setDelegate:delegate];
    [tableView setSeparatorStyle:UITableViewCellSeparatorStyleSingleLine];
    [tableView registerClass:[WBTableViewCell class] forCellReuseIdentifier:@"WBTableViewCell"];
    
    return tableView;
}

@end
