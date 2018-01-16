//
//  ViewController.m
//  LayerStudyDemo
//
//  Created by apple on 2017/9/15.
//  Copyright © 2017年 ZY. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
{
    CALayer   *  yellowLayer;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    //是否沿着Y轴翻转
    self.view.layer.geometryFlipped = YES;
    [self layerDemo];
}

//创建一个图层
-(void)layerDemo{
    yellowLayer = [CALayer layer];
    yellowLayer.frame = CGRectMake(50, 200, 100, 100);
    yellowLayer.backgroundColor = [UIColor yellowColor].CGColor;
    //设置圆角
    yellowLayer.cornerRadius = 30;
    //默认四个圆角，你也可以选择圆角个数
    yellowLayer.maskedCorners = kCALayerMinXMaxYCorner|kCALayerMinXMinYCorner;
    //BOOL，Animatable。图层有双面，是否都显示，设置NO意思背面看不到。下图是两个图层分别设置doubleSided为NO和YES翻转180°的效果。默认值为YES
    yellowLayer.doubleSided = NO;
    
    CATextLayer  *  textLayer = [CATextLayer layer];
    textLayer.frame = yellowLayer.bounds;
    textLayer.string = @"我们不一样";
    [yellowLayer addSublayer:textLayer];
    
    CALayer   *  blueLayer = [CALayer layer];
    blueLayer.frame = CGRectMake(50, 200, 100, 100);
    blueLayer.backgroundColor = [UIColor blueColor].CGColor;
    blueLayer.anchorPoint =  CGPointMake(0.0f, 0.0f);
    
    [self.view.layer addSublayer:blueLayer];
    [self.view.layer addSublayer:yellowLayer];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
