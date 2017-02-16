//
//  FKLinkInfo.h
//  Link
//
//  Created by 赵瑞生 on 16/7/4.
//  Copyright © 2016年 ZRS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FKPoint.h"

@interface FKLinkInfo : NSObject

/**
 *  定义一个NSMutableArray  用于保存连接点
 */
@property (nonatomic, strong) NSMutableArray* points;

- (instancetype)initWithP1:(FKPoint*)p1 p2:(FKPoint*)p2;
- (instancetype)initWithP1:(FKPoint*)p1 p2:(FKPoint*)p2 p3:(FKPoint*)p3;
- (instancetype)initWithP1:(FKPoint*)p1 p2:(FKPoint*)p2 p3:(FKPoint*)p3 p4:(FKPoint*)p4;

@end
