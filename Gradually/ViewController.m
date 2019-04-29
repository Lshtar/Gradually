//
//  ViewController.m
//  Gradually
//
//  Created by D on 2018/7/10.
//  Copyright © 2018年 D. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+gradient.h"

#define RGB(r,g,b) [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:1]
#define TCUIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue &0xFF00) >>8))/255.0 blue:((float)(rgbValue &0xFF))/255.0 alpha:1.0]

@interface ViewController ()

@property (nonatomic, strong) UIButton* dateBut;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //投影
    [self creatGradually];
    
}

- (void) creatGradually
{
    UIButton* thirdBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    thirdBtn.frame = CGRectMake(10, 50, 200, 44);
    [thirdBtn setTitle:@"代码创建的按钮，使用layer" forState:UIControlStateNormal];
    [thirdBtn setImage:[UIImage imageNamed:@"right"] forState:UIControlStateNormal];
    //阴影的颜色
    [thirdBtn.layer setShadowColor:(__bridge CGColorRef _Nullable)(@[(id)[RGB(46, 229, 253) CGColor],(id)[RGB(41, 195, 252) CGColor]])];
    //阴影偏移量
    thirdBtn.layer.shadowOffset = CGSizeMake(4, 4);
    //阴影的透明度
    thirdBtn.layer.shadowOpacity = 0.5;
    //阴影的圆角
    thirdBtn.layer.shadowRadius = 5;
    
    CAGradientLayer *gradientLayer =  [CAGradientLayer layer];
    gradientLayer.frame = CGRectMake(0, 0, 200, 44);
    gradientLayer.startPoint = CGPointMake(0, 0);
    gradientLayer.endPoint = CGPointMake(1, 0);
    gradientLayer.locations = @[@(0.1),@(1.0)];
    gradientLayer.cornerRadius = 10;
    [gradientLayer setColors:@[(id)[RGB(46, 229, 253) CGColor],(id)[RGB(41, 195, 252) CGColor]]];
    [thirdBtn.layer addSublayer:gradientLayer];
    
    [self.view addSubview:thirdBtn];
    
    
    UIButton* fourBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    fourBtn.frame = CGRectMake(20, 120, 250, 44);
    [fourBtn setTitle:@"买入" forState:UIControlStateNormal];
    [fourBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //[four setImage:[UIImage imageNamed:@"right"] forState:UIControlStateNormal];
    [fourBtn gradientButtonWithSize:CGSizeMake(200, 44) colorArray:@[(id)TCUIColorFromRGB(0xFF6347),(id)TCUIColorFromRGB(0xFF0000)] percentageArray:@[@(0.18),@(1)] gradientType:GradientFromLeftBottomToRightTop];
    
    CALayer *layer = [CALayer layer];
    layer.frame = CGRectMake(20, 120, 250, 44);
    layer.backgroundColor = [UIColor blueColor].CGColor;
    // layer.shadowColor = [UIColor lightGrayColor].CGColor;
    layer.shadowColor = [TCUIColorFromRGB(0xFF644b) colorWithAlphaComponent:0.5].CGColor;
    layer.shadowOffset = CGSizeMake(0, 3);
    
    //    //路径阴影
    //    UIBezierPath *path = [UIBezierPath bezierPath]; ff644b
    //    [path moveToPoint:CGPointMake(-5, -5)];
    //    //添加直线
    //    [path addLineToPoint:CGPointMake(paintingWidth /2, -15)];
    //    [path addLineToPoint:CGPointMake(paintingWidth +5, -5)];
    //    [path addLineToPoint:CGPointMake(paintingWidth +15, paintingHeight /2)];
    //    [path addLineToPoint:CGPointMake(paintingWidth +5, paintingHeight +5)];
    //    [path addLineToPoint:CGPointMake(paintingWidth /2, paintingHeight +15)];
    //    [path addLineToPoint:CGPointMake(-5, paintingHeight +5)];
    //    [path addLineToPoint:CGPointMake(-15, paintingHeight /2)];
    //    [path addLineToPoint:CGPointMake(-5, -5)];
    //    //设置阴影路径
    //    four.layer.shadowPath = path.CGPath;
    
    layer.shadowOpacity = 0.5;
    layer.cornerRadius = 5;
    
    [self.view.layer addSublayer:layer];
    fourBtn.layer.masksToBounds = YES;
    fourBtn.layer.cornerRadius = 5;
    [self.view addSubview:fourBtn];
}

- (void) setupButtonView
{
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
