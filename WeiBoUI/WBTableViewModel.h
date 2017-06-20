//
//  WBTableViewModel.h
//  WeiBoUI
//
//  Created by gaoyou on 17/6/19.
//  Copyright © 2017年 xin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface WBTableViewModel : NSObject<UITableViewDataSource,UITableViewDelegate>

@property (nonatomic, strong) NSArray *dataArray;
@property (nonatomic, copy) void(^selectHandler)(NSIndexPath *indexPath);

+ (instancetype)model;
- (void)loadData;


@end
