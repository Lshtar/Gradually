//
//  ButtonView.h
//  Gradually
//
//  Created by D on 2018/7/17.
//  Copyright © 2018年 D. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ButtonView;

@protocol ButtonViewDelegate<NSObject>


@end


@interface ButtonView : UIView

@property (nonatomic, strong) UILabel* desLabel;
@property (nonatomic, strong) UIButton* desButton;
@property (nonatomic, strong) UIButton* showButton;

@property (nonatomic, strong) UIView* showView;

- (instancetype) initWithFrame:(CGRect) frame  desLabel:(UILabel*) desLabel desButton:(UIButton*) desButton showButton:(UIButton*)showButton showView:(UIView*)showView;


@end
