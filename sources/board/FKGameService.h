//
//  FKGameService.h
//  Link
//
//  Created by 赵瑞生 on 16/7/4.
//  Copyright © 2016年 ZRS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FKPiece.h"
#import "FKLinkInfo.h"

@interface FKGameService : NSObject

@property (nonatomic, strong) NSArray* pieces;
/**
 *  控制游戏开始的方法
 */
- (void)start;
/**
 *  判断参数FKPiece二维数组中是否还存在返回非空的FKPiece对象
 *  @return  如果还剩FKPiece对象返回yes，没有返回no
 */
- (BOOL)hasPieces;

/**
 *  根据碰触点的X坐标和Y坐标，查找出一个FKPiece对象
 *
 *  @param touchX 碰触点的X坐标
 *  @param touchY 碰触点的Y坐标
 *
 *  @return 返回对应的FKPiece对象，没有返回nil
 */
- (FKPiece*) findPieceAtTouchX:(CGFloat)touchX touchY:(CGFloat)touchY;

/**
 *  判断两个FKPiece是否可以相连，可以相连，返回FKLinkInfo对象
 *
 *  @param p1 第一个FKPiece对象
 *  @param p2 第二个FKPiece对象
 *
 *  @return 如果可以相连，返回FKLinkInfo对象，如果两个FKPiece不可以链接，返回nil
 */
- (FKLinkInfo*) linkWithBeginPiece:(FKPiece*)p1 endPiece:(FKPiece*)p2;


@end
