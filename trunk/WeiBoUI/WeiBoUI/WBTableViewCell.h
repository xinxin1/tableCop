//
//  WBTableViewCell.h
//  WeiBoUI
//
//  Created by gaoyou on 17/6/19.
//  Copyright © 2017年 xin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WBModel.h"

@interface WBTableViewCell : UITableViewCell

@property (nonatomic, strong) UIImageView *avatarImageView;
@property (nonatomic, strong) UILabel *nameLabel;
@property (nonatomic, strong) UIImageView *vipImageView;
@property (nonatomic, strong) UILabel *contentLabel;
@property (nonatomic, strong) UIImageView *contentImageView;


- (void)updateCellWithModel:(WBModel *)model;

@end
