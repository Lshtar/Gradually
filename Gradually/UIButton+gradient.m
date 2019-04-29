//
//  UIButton+gradient.m
//  Gradually
//
//  Created by D on 2018/7/10.
//  Copyright © 2018年 D. All rights reserved.
//

#import "UIButton+gradient.h"

@implementation UIButton (gradient)

- (UIButton *)gradientButtonWithSize:(CGSize)btnSize colorArray:(NSArray *)clrs percentageArray:(NSArray *)percent gradientType:(GradientType)type
{
    UIImage *backImage = [[UIImage alloc]createImageWithSize:btnSize gradientColors:clrs percentage:percent gradientType:type];
    
    [self setBackgroundImage:backImage forState:UIControlStateNormal];
    
    return self;
}

@end
