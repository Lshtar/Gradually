//
//  ButtonView.m
//  Gradually
//
//  Created by D on 2018/7/17.
//  Copyright © 2018年 D. All rights reserved.
//

#import "ButtonView.h"

@implementation ButtonView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)initWithFrame:(CGRect)frame desLabel:(UILabel *)desLabel desButton:(UIButton *)desButton showButton:(UIButton *)showButton showView:(UIView *)showView
{
    self = [super initWithFrame:frame];
    if (self) {
        self.desLabel = desLabel;
        self.desButton = desButton;
        self.showButton = showButton;
        self.showView = showView;
        self.backgroundColor = [UIColor whiteColor];
        self.userInteractionEnabled = YES;
    }
    return self;
}

- (void) setupShowButtonView
{
//    UIView* showView = [[UIView alloc] initWithFrame:CGRectMake(0, 100, self.frame.size.width, self.frame.size.height)];
//    showView.backgroundColor = [UIColor whiteColor];
//    [self addSubview:showView];
    
    self.desLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 20, 150, 30)];
    self.desLabel.backgroundColor = [UIColor clearColor];
    self.desLabel.font = [UIFont systemFontOfSize:18.0f];
    self.desLabel.text = @"";
    UIColor* stateColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"scoring"]];
    self.desLabel.backgroundColor = stateColor;
    [self addSubview:self.desLabel];
    
    self.desButton = [UIButton buttonWithType:UIButtonTypeCustom];
    self.desButton.frame = CGRectMake(180, 20, 20, 20);
    [self.desButton setImage:[UIImage imageNamed:@""] forState:UIControlStateNormal];
    [self addSubview:self.desButton];
    
    self.showButton = [UIButton buttonWithType:UIButtonTypeCustom];
    self.showButton.frame = CGRectMake(self.frame.size.width-80, 20, 60, 40);
    [self.showButton setTitle:@"" forState:UIControlStateNormal];
    [self.showButton setBackgroundColor:[UIColor blueColor]];
    [self.showButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self addSubview:self.showButton];
    
    self.showView = [[UIView alloc] initWithFrame:CGRectMake(20, 90, self.frame.size.width -40, 80)];
    [self addSubview:self.showView];
}

@end
