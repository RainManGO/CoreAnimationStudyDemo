//
//  CGAffineTransformViewController.m
//  LayerStudyDemo
//
//  Created by apple on 2017/9/30.
//  Copyright © 2017年 ZY. All rights reserved.
//

#import "CGAffineTransformViewController.h"

@interface CGAffineTransformViewController ()
@property (weak, nonatomic) IBOutlet UITextView *layerTextView;

@end

@implementation CGAffineTransformViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //CGAffineTransform 创建初始化
    CGAffineTransform transform = CGAffineTransformIdentity;
    //缩放
    transform = CGAffineTransformScale(transform, 0.6, 0.6);
    //旋转
    transform = CGAffineTransformRotate(transform, M_PI / 180.0 * 30.0);
    //位移变化
    transform = CGAffineTransformTranslate(transform, 20, 100);
    //应用到layer
    self.layerTextView.layer.affineTransform = transform;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
