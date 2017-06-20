//
//  WBTableViewCell.m
//  WeiBoUI
//
//  Created by gaoyou on 17/6/19.
//  Copyright © 2017年 xin. All rights reserved.
//

#import "WBTableViewCell.h"

@implementation WBTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self setSelectionStyle:UITableViewCellSelectionStyleNone];
        [self setAvatarImageView:[[UIImageView alloc] init]];
        [self.avatarImageView setClipsToBounds:YES];
        [self.avatarImageView.layer setCornerRadius:30];
        [self.contentView addSubview:self.avatarImageView];
        
        [self setNameLabel:[[UILabel alloc] init]];
        [self.nameLabel setFont:[UIFont systemFontOfSize:17]];
        [self.nameLabel setTextColor:[UIColor darkGrayColor]];
        [self.contentView addSubview:self.nameLabel];
        
        [self setVipImageView:[[UIImageView alloc] init]];
        [self.vipImageView setContentMode:UIViewContentModeScaleAspectFit];
        [self.contentView addSubview:self.vipImageView];
        
        [self setContentLabel:[[UILabel alloc] init]];
        [self.contentLabel setFont:[UIFont systemFontOfSize:15]];
        [self.contentLabel setNumberOfLines:0];
        [self.contentLabel setLineBreakMode:NSLineBreakByWordWrapping];
        [self.contentView addSubview:self.contentLabel];
        
        [self setContentImageView:[[UIImageView alloc] init]];
        [self.contentView addSubview:self.contentImageView];
    }
    
    return self;
}

- (void)updateCellWithModel:(WBModel *)model{
    //完成 cell 动态高度调整
    [self.avatarImageView setFrame:model.avatarFrame];
    [self.nameLabel setFrame:model.nameFrame];
    [self.vipImageView setFrame:model.vipFrame];
    [self.contentLabel setFrame:model.contentFrame];
    [self.contentImageView setFrame:model.contentImageFrame];
    
    
    //  完成数据更新
    [self.avatarImageView setImage:[UIImage imageNamed:model.icon]];
    [self.nameLabel setText:model.name];
    [self.contentLabel setText:model.text];
    [self.contentImageView setImage:[UIImage imageNamed:model.picture]];
    [self.vipImageView setImage:[UIImage imageNamed:@"e"]];
    
    [self.vipImageView setHidden:(model.vip.integerValue==0)];
}

@end
