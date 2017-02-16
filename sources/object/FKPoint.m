//
//  FKPoint.m
//  Link
//
//  Created by 赵瑞生 on 16/7/4.
//  Copyright © 2016年 ZRS. All rights reserved.
//

#import "FKPoint.h"

@implementation FKPoint

- (instancetype)initWithX:(NSInteger)x y:(NSInteger)y
{
    self = [super init];
    if (self) {
        _x = x;
        _y = y;
    }
    return self;
}

- (id)copyWithZone:(NSZone *)zone
{
    //复制一个对象
    FKPoint *newPt = [[[self class] allocWithZone:zone] init];
    //将被复制对象的实变量的值赋给新对象的实例变量
    newPt->_x = _x;
    newPt->_y = _y;
    return newPt;
}

- (BOOL)isEqual:(FKPoint *)other
{
    return _x == other.x && _y == other.y;
}

- (NSUInteger)hash
{
    return  _x * 31 + _y;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"{x= %@s, y = %d}", _x, _y];
}
@end
