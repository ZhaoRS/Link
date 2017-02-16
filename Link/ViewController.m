//
//  ViewController.m
//  Link
//
//  Created by 赵瑞生 on 16/7/4.
//  Copyright © 2016年 ZRS. All rights reserved.
//

#import "ViewController.h"
#import "GameViewController.h"


@interface ViewController ()



@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
        
    
}



- (IBAction)buttonClick:(id)sender {
    
    GameViewController *controller =[[GameViewController alloc] initWithNibName:@"GameViewController" bundle:nil];
    [self presentViewController:controller animated:YES completion:^{
        
    }];
}
@end
