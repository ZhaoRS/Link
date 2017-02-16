//
//  FKPiece.m
//  Link
//
//  Created by 赵瑞生 on 16/7/4.
//  Copyright © 2016年 ZRS. All rights reserved.
//

#import "FKPiece.h"

@implementation FKPiece

- (instancetype)initWithIndexX:(NSInteger)indexX indexY:(NSInteger)indexY
{
    self = [super init];
    if (self) {
        _indexX = indexX;
        _indexY = indexY;
    }
    return self;
}

#pragma mark -获取该FKPiece的中心
- (FKPoint *)getCenter
{
    return [[FKPoint alloc] initWithX:self.image.image.size.width / 2 + _beginX y:self.image.image.size.height / 2 + _beginY];
}


#pragma mark -判断两个图片是否相同
- (BOOL)isEqual:(FKPiece *)other
{
    if (self.image == nil) {
        if (other.image != nil) {
            return NO;
        }
    }
    return self.image.imageId == other.image.imageId;
}

@end
