///Users/zhaoruisheng/Desktop/Link/Link.xcodeproj
//  Constants.h
//  Link
//
//  Created by 赵瑞生 on 16/7/4.
//  Copyright © 2016年 ZRS. All rights reserved.
//

#ifndef Constants_h
#define Constants_h

#define AI_SCREEN_WIDTH  [UIScreen mainScreen].bounds.size.width
#define AI_SCREEN_HEIGHT  [UIScreen mainScreen].bounds.size.height

#define LBFITSCREEN (AI_SCREEN_WIDTH/375.0)//适配屏幕
//设置练练看的每个方块的图片宽、高
#define PIECE_WIDTH 40
#define PIECE_HEIGHT 40 
//记录游戏的总时间
#define DEFAULT_TIME 100

//FKPiece二维数组中第一维的长度
#define xSize 8
//FKPiece二维数组中第二维的长度
#define ySize 10

//Board中第一张图片出现的x坐标
#define beginImageX 2
//Board中一张图片出现的y坐标
#define beginImageY 10

#endif /* Constants_h */
