//
//  FKPieceImage.h
//  Link
//
//  Created by 赵瑞生 on 16/7/4.
//  Copyright © 2016年 ZRS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface FKPieceImage : NSObject

@property (nonatomic, strong) UIImage* image;
@property (nonatomic, copy) NSString *imageId;
- (instancetype)initWithImage:(UIImage *)image imageId:(NSString *)imageId;

@end
