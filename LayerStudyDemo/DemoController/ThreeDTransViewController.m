//
//  ThreeDTransViewController.m
//  LayerStudyDemo
//
//  Created by apple on 2017/10/9.
//  Copyright © 2017年 ZY. All rights reserved.
//

#import "ThreeDTransViewController.h"

@interface ThreeDTransViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imgView;

@end

@implementation ThreeDTransViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //初始化CATransform3D
    CATransform3D transForm = CATransform3DIdentity;
    //m34决定远近缩放
    transForm.m34 = - 1.0 / 500.0;
    //旋转M_PI_4
    transForm = CATransform3DRotate(transForm, M_PI_4, 0, 1, 0);
    //应用带Layer
    _imgView.layer.transform= transForm;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
