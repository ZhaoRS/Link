//
//  FKPoint.h
//  Link
//
//  Created by 赵瑞生 on 16/7/4.
//  Copyright © 2016年 ZRS. All rights reserved.
//

#import <Foundation/Foundation.h>
//定义一个代表屏幕上的点得FKPoint， 它包含x，y两个属性
@interface FKPoint : NSObject <NSCopying>
@property (nonatomic, assign) NSInteger x;
@property (nonatomic, assign) NSInteger y;
- (instancetype)initWithX:(NSInteger)x y:(NSInteger)y;

@end
