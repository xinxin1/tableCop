//
//  WBModel.h
//  WeiBoUI
//
//  Created by gaoyou on 17/6/19.
//  Copyright © 2017年 xin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WBModel : NSObject

@property (nonatomic, copy) NSString *picture;
@property (nonatomic, copy) NSString *text;
@property (nonatomic, copy) NSString *icon;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSNumber *vip;

@property (nonatomic, assign) CGRect avatarFrame;
@property (nonatomic, assign) CGRect nameFrame;
@property (nonatomic, assign) CGRect vipFrame;
@property (nonatomic, assign) CGRect contentFrame;
@property (nonatomic, assign) CGRect contentImageFrame;
@property (nonatomic, assign) CGFloat rowHeight;

+ (instancetype)modelWithDict:(NSDictionary *)dict;
- (void)updateRowHeight;

@end
