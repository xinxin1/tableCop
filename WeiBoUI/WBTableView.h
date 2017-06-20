//
//  WBTableView.h
//  WeiBoUI
//
//  Created by gaoyou on 17/6/19.
//  Copyright © 2017年 xin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WBTableView : UITableView

+ (instancetype)tableViewWithFrame:(CGRect)frame delegate:(id<UITableViewDelegate,UITableViewDataSource>)delegate;

@end
