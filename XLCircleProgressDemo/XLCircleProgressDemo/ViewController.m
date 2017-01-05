//
//  ViewController.m
//  CircleViewDemo
//
//  Created by Apple on 16/9/22.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "ViewController.h"
#import "XLCircleProgress.h"
@interface ViewController ()
{
    XLCircleProgress *_circle;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blackColor];
    [self addCircle];
}

-(void)addCircle
{
    CGFloat margin = 15.0f;
    CGFloat circleWidth = [UIScreen mainScreen].bounds.size.width - 2*margin;
    _circle = [[XLCircleProgress alloc] initWithFrame:CGRectMake(0, 0, circleWidth, circleWidth)];
    _circle.center = self.view.center;
    [self.view addSubview:_circle];
    
    UISlider *slider = [[UISlider alloc] initWithFrame:CGRectMake(50, CGRectGetMaxY(_circle.frame) + 50, self.view.bounds.size.width - 2*50, 30)];
    [slider addTarget:self action:@selector(sliderMethod:) forControlEvents:UIControlEventValueChanged];
    [slider setMaximumValue:1];
    [slider setMinimumValue:0];
    [slider setMinimumTrackTintColor:[UIColor colorWithRed:255.0f/255.0f green:151.0f/255.0f blue:0/255.0f alpha:1]];
    [self.view addSubview:slider];
}

-(void)sliderMethod:(UISlider*)slider
{
    _circle.progress = slider.value;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
