//
//  GameViewController.m
//  Link
//
//  Created by 赵瑞生 on 16/7/5.
//  Copyright © 2016年 ZRS. All rights reserved.
//

#import "GameViewController.h"
#import "FKGameView.h"
#import "Constants.h"
#import "FKPiece.h"

#define AI_SCREEN_WIDTH  [UIScreen mainScreen].bounds.size.width
#define AI_SCREEN_HEIGHT  [UIScreen mainScreen].bounds.size.height

@interface GameViewController ()
{
    //游戏界面类
    FKGameView *gameView;
    //游戏剩余时间
    NSInteger leftTime;
    //定时器
    NSTimer *timer;
    BOOL isPlaying;
    UIAlertController *lostAlert;
    UIAlertController *successAlert;
}
@end

@implementation GameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [UIApplication sharedApplication].statusBarHidden = YES;
    self.timeText.textColor = [UIColor colorWithRed:1 green:1 blue:9/15 alpha:1];
    //使用roo.jpg作为背景
    UIColor *bgColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"room.jpg"]];
    self.view.backgroundColor = bgColor;
    //为startBtn设置按钮图片
    [self.startBtn setBackgroundImage:[UIImage imageNamed:@"start.png"] forState:UIControlStateNormal];
    [self.startBtn setBackgroundImage:[UIImage imageNamed:@"start_down.png"] forState:UIControlStateHighlighted];
    //为startBtn绑定处理事件
    
    //创建FKGameView
    gameView = [[FKGameView alloc] initWithFrame:CGRectMake(0, 20, AI_SCREEN_WIDTH, AI_SCREEN_HEIGHT - 20 - 49)];
    //创建FKGameService对象
    gameView.gameSerVice = [[FKGameService alloc] init];
    gameView.delegate = self;
    gameView.backgroundColor = [UIColor clearColor];
    [self.view addSubview:gameView];

}

- (void)refreshView
{
    self.timeText.text = [NSString stringWithFormat:@"剩余时间:%d", leftTime];
    leftTime --;
    //时间小于0，游戏失败
    if (leftTime < 0) {
        [timer invalidate];
        //更改游戏状态
        isPlaying = NO;
        return;
    }
}

- (void)checkWin:(FKGameView *)gameView
{
    //判断是否还有剩下的方块，如果没有，游戏胜利
    if (![gameView.gameSerVice hasPieces]) {
        //游戏胜利
        
        //停止定时器
        [timer invalidate];
        isPlaying = NO;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)starGame:(id)sender {
    //如果之前的timer还未取消，取消timer
    if (timer != nil) {
        [timer invalidate];
    }
    //重新设置游戏时间
    leftTime = DEFAULT_TIME;
    //开始新的游戏
    [gameView starGame];
    isPlaying = YES;
    timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(refreshView) userInfo:nil repeats:YES];
    //将选中方块设为nil
    gameView.selectedPiece = nil;
}


@end
