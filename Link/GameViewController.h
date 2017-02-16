//
//  GameViewController.h
//  Link
//
//  Created by 赵瑞生 on 16/7/5.
//  Copyright © 2016年 ZRS. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FKGameView.h"


@interface GameViewController : UIViewController <FKGameViewDelegate>

@property (weak, nonatomic) IBOutlet UIButton *startBtn;
@property (weak, nonatomic) IBOutlet UILabel *timeText;
- (IBAction)starGame:(id)sender;

@end
