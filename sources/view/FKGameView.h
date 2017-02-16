//
//  FKGameView.h
//  Link
//
//  Created by 赵瑞生 on 16/7/4.
//  Copyright © 2016年 ZRS. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FKGameService.h"
#import "FKLinkInfo.h"
#import "FKPiece.h"

@class FKGameView;
@protocol FKGameViewDelegate <NSObject>

- (void)checkWin:(FKGameView *)gameView;

@end

@interface FKGameView : UIView
//游戏逻辑的实现类
@property (nonatomic, strong) FKGameService *gameSerVice;
//连接信息对象
@property (nonatomic, strong) FKLinkInfo *linkInfo;
//保存当前已经被选中的方块
@property (nonatomic, strong) FKPiece *selectedPiece;
@property (nonatomic, assign) id <FKGameViewDelegate>delegate;

/**
 *  开始游戏
 */
- (void)starGame;

@end
