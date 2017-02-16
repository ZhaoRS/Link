//
//  FKPiece.h
//  Link
//
//  Created by 赵瑞生 on 16/7/4.
//  Copyright © 2016年 ZRS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FKPieceImage.h"
#import "FKPoint.h"

@interface FKPiece : NSObject
@property (nonatomic, strong) FKPieceImage* image;
/**
 *  该方块的左上角的X坐标
 */
@property (nonatomic, assign) NSInteger beginX;
/**
 *  该方块的左上角的Y坐标
 */
@property (nonatomic, assign) NSInteger beginY;
/**
 *  该对象的FKPiece二维数组中的第一维的索引值
 */
@property (nonatomic, assign) NSInteger indexX;
/**
 *  该对象在FKPiece二维数组中的第二维的索引值
 */
@property (nonatomic, assign) NSInteger indexY;

- (instancetype)initWithIndexX:(NSInteger)indexX indexY:(NSInteger)indexY;
/**
 *  获取该FKPiece的中心
 */
- (FKPoint *)getCenter;
/**
 *  判断两个照片是否相同
 */
- (BOOL)isEqual:(FKPiece* )other;

@end
