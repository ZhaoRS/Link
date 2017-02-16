//
//  FKHorizontalBoard.m
//  Link
//
//  Created by 赵瑞生 on 16/7/4.
//  Copyright © 2016年 ZRS. All rights reserved.
//

#import "FKHorizontalBoard.h"
#import "FKPiece.h"

@implementation FKHorizontalBoard

- (NSArray *)createPieces:(NSArray *)pieces
{
    //创建一个集合。该集合这里面存放初始化游戏所需的FKPiece对象
    NSMutableArray *notNullPieces = [[NSMutableArray alloc] init];
    for (int i = 0; i < pieces.count; i ++) {
        for (int j = 0 ; j < [[pieces objectAtIndex:i] count]; j ++) {
            //加入判断，符合一定条件才去构造FKPiece对象，并加到集合中
            //如果j能被2整除，即单数行不会创建方块
            if (j % 2 == 0) {
                //先构建一个FKPiece对象,只设置它在FKPiece二维数组中的索引值
                //所需要的FKPieceImage由其父类负责设置
                FKPiece *piece = [[FKPiece alloc] initWithIndexX:i indexY:j];
                //添加到FKPiece集合中
                [notNullPieces addObject:piece];
            }
        }
    }
    return notNullPieces;
}

@end
