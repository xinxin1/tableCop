//
//  WBModel.m
//  WeiBoUI
//
//  Created by gaoyou on 17/6/19.
//  Copyright © 2017年 xin. All rights reserved.
//

#import "WBModel.h"

@implementation WBModel



#pragma mark - Model解析
+ (instancetype)modelWithDict:(NSDictionary *)dict{
    WBModel *model = [[WBModel alloc] init];
    
    [model setValuesForKeysWithDictionary:dict];
    
    return model;
}


- (void)setValue:(id)value forUndefinedKey:(NSString *)key{}


- (void)updateRowHeight{
    CGSize nameSize = [self.name boundingRectWithSize:CGSizeMake(150, 21) options:NSStringDrawingUsesFontLeading|NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName: [UIFont systemFontOfSize:17]} context:nil].size;
    CGSize contentSize = [self.text boundingRectWithSize:CGSizeMake(CGRectGetWidth([UIScreen mainScreen].bounds)-30, 1000) options:NSStringDrawingUsesFontLeading|NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName: [UIFont systemFontOfSize:15]} context:nil].size;
    CGSize contentImageSize = CGSizeZero;
    if (self.picture) {
        contentImageSize = CGSizeMake(90, 90);
    }
    
    [self setAvatarFrame:CGRectMake(15, 15, 60, 60)];
    [self setNameFrame:CGRectMake(90, 35, nameSize.width, 21)];
    [self setVipFrame:CGRectMake(CGRectGetMaxX(self.nameFrame)+5, CGRectGetMinY(self.nameFrame), 21, 21)];
    [self setContentFrame:CGRectMake(15, CGRectGetMaxY(self.avatarFrame)+15, contentSize.width, contentSize.height)];
    [self setContentImageFrame:CGRectMake(15, CGRectGetMaxY(self.contentFrame)+15, contentImageSize.width, contentImageSize.height)];
    [self setRowHeight:(CGRectGetMaxY(self.contentImageFrame)+(self.picture?15:0))];
}


@end
