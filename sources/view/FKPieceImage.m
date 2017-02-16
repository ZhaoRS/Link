//
//  FKPieceImage.m
//  Link
//
//  Created by 赵瑞生 on 16/7/4.
//  Copyright © 2016年 ZRS. All rights reserved.
//

#import "FKPieceImage.h"

@implementation FKPieceImage
- (instancetype)initWithImage:(UIImage *)image imageId:(NSString *)imageId
{
    self = [super init];
    if (self) {
        _image = image;
        _imageId = imageId;
    }
    return self;
}
@end
