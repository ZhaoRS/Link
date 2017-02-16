//
//  FKBaseBoard.m
//  Link
//
//  Created by 赵瑞生 on 16/7/4.
//  Copyright © 2016年 ZRS. All rights reserved.
//

#import "FKBaseBoard.h"
#import "FKPiece.h"
#import "Constants.h"
#import "FKImageUtil.h"

@implementation FKBaseBoard

#pragma mark- 定义一个方法， 让子类去实现
- (NSArray *)createPieces:(NSArray *)pieces
{
    return nil;
}

- (NSArray *)create
{
    //创建FKPiece的二维数组
    NSMutableArray *pieces = [[NSMutableArray alloc] init];
    for (int i = 0; i < xSize; i ++) {
        NSMutableArray *arr = [[NSMutableArray alloc] init];
        for (int j = 0; j < ySize; j ++) {
            [arr addObject:[NSObject new]];
        }
        [pieces addObject:arr];
    }
    
    //返回非空的FKPiece集合，该集合由子类实现的方法负责创建
    NSArray *notNullPieces = [self createPieces:pieces];
    //根据非空FKPiece对象集合的大小来取图片
    NSArray *playImages = getPlayImages(notNullPieces.count);
    //所有图片的宽、高都是相同的，随便去一个
    FKPieceImage *choiceImage = [playImages objectAtIndex:0];
    int imageWith = choiceImage.image.size.width;
    int imageHeight = choiceImage.image.size.height;
    
    //遍历非空的FKPiece集合
    for (int i = 0; i < notNullPieces.count; i ++) {
        //以此获取每个FKPiece对象
        FKPiece *piece = [notNullPieces objectAtIndex:i];
        piece.image = [playImages objectAtIndex:i];
        //计算每个方块的左上角的x、y坐标
        piece.beginX = piece.indexX * imageWith + beginImageX;
        piece.beginY = piece.indexY * imageHeight + beginImageY;
        //将该对象放入方块数组的响应位置
        [[pieces objectAtIndex:piece.indexX] setObject:piece atIndex:piece.indexY];
    }
    return pieces;
    
}

@end
