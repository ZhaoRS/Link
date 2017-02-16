//
//  FKLinkInfo.m
//  Link
//
//  Created by 赵瑞生 on 16/7/4.
//  Copyright © 2016年 ZRS. All rights reserved.
//

#import "FKLinkInfo.h"

@implementation FKLinkInfo

#pragma mark-提供一个初始化方法， 表示两个KFPoint可以直接相连，没有转折点
- (instancetype)initWithP1:(FKPoint *)p1 p2:(FKPoint *)p2
{
    self = [super init];
    if (self) {
        _points = [[NSMutableArray alloc] init];
        [_points addObject:p1];
        [_points addObject:p2];
    }
    return self;
}

#pragma mark -提供第二个初始化方法，表示单个KFPoint可以相连， p2是p1与p3之间的转折点
- (instancetype)initWithP1:(FKPoint *)p1 p2:(FKPoint *)p2 p3:(FKPoint *)p3
{
    self = [super init];
    if (self) {
        _points = [[NSMutableArray alloc] init];
        [_points addObject:p1];
        [_points addObject:p2];
        [_points addObject:p3];
    }
    return self;
}

#pragma mark -提供第三个初始化方法，表示四个FKpoin可以相连，p2、p3是p1与p4的转折点
- (instancetype)initWithP1:(FKPoint *)p1 p2:(FKPoint *)p2 p3:(FKPoint *)p3 p4:(FKPoint *)p4
{
    self = [super init];
    if (self) {
        _points = [[NSMutableArray alloc] init];
        [_points addObject:p1];
        [_points addObject:p2];
        [_points addObject:p3];
        [_points addObject:p4];
    }
    return self;
}

@end
