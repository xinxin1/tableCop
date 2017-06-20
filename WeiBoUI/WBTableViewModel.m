//
//  WBTableViewModel.m
//  WeiBoUI
//
//  Created by gaoyou on 17/6/19.
//  Copyright © 2017年 xin. All rights reserved.
//

#import "WBTableViewModel.h"
#import "WBModel.h"
#import "WBTableViewCell.h"

@implementation WBTableViewModel

+ (instancetype)model{
    WBTableViewModel *model = [[self alloc] init];
    
    
    return model;
}

- (void)loadData{
    NSString *path = [[NSBundle mainBundle] pathForResource:@"statuses" ofType:@"plist"];
    NSArray *dataArray = [NSArray arrayWithContentsOfFile:path];
    
    NSMutableArray *tempArray = [NSMutableArray array];
    for (NSDictionary *dataDict in dataArray) {
        WBModel *model = [WBModel modelWithDict:dataDict];
        [tempArray addObject:model];
        
        [model updateRowHeight];
    }
    
    self.dataArray = [tempArray copy];
}


#pragma mark - tableView delegate - 

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if (self.selectHandler) {
        self.selectHandler(indexPath);
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    WBModel *model = self.dataArray[indexPath.row];
    return model.rowHeight;
}


#pragma mark - tableView dataSource -
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dataArray.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    WBTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"WBTableViewCell"];
    [cell updateCellWithModel:self.dataArray[indexPath.row]];
    return cell;
}

@end
