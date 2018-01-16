//
//  VisualEffectViewController.m
//  LayerStudyDemo
//
//  Created by apple on 2017/9/26.
//  Copyright © 2017年 ZY. All rights reserved.
//

#import "VisualEffectViewController.h"

@interface VisualEffectViewController ()
@property (weak, nonatomic) IBOutlet UIView *View1;
@property (strong, nonatomic) IBOutlet UIView *View2;
@property (weak, nonatomic) IBOutlet UIView *shadowView;
@property (weak, nonatomic) IBOutlet UIImageView *timeImage;
@end

@implementation VisualEffectViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self layerCornerRadiusAndWidth];
    [self shadowEffect];
    [self shadowPath];
}

//layer的圆角，裁剪，边框。
-(void)layerCornerRadiusAndWidth{
    //圆角弧度
    self.View1.layer.cornerRadius = 30;
    //是否边框外绘制
    self.View1.layer.masksToBounds = YES;
    //边框颜色
    self.View1.layer.borderColor = [UIColor blackColor].CGColor;
    //边框宽度
    self.View1.layer.borderWidth = 3;
}

//阴影效果
-(void)shadowEffect{
    //阴影透明度
    self.shadowView.layer.shadowOpacity = 0.8;
    //阴影颜色
    self.shadowView.layer.shadowColor = [self getColorFromRed:0 Green:1 Blue:0 Alpha:1];
    // shadowOffset属性控制着阴影的方向和距离。它是一个CGSize的值，宽度控制这阴影横向的位移，高度控制着纵向的位移。
    self.shadowView.layer.shadowOffset = CGSizeMake(1, 1);
    //shadowRadius属性控制着阴影的模糊度，当它的值是0的时候，阴影就和视图一样有一个非常确定的边界线。当值越来越大的时候，边界线看上去就会越来越模糊和自然。苹果自家的应用设计更偏向于自然的阴影，所以一个非零值再合适不过了。
    self.shadowView.layer.shadowRadius = 100;
}

//CGColorRef
-(CGColorRef) getColorFromRed:(int)red Green:(int)green Blue:(int)blue Alpha:(int)alpha
{
    // RGBA 色彩 （显示3色）
    CGColorSpaceRef rgbSapceRef = CGColorSpaceCreateDeviceRGB();// RGB 色彩空间
    CGFloat rgbComponents[] = {red, green, blue, 1};// RGBA 颜色组件
    CGColorRef rgbColorRef = CGColorCreate(rgbSapceRef, rgbComponents);// 一般创建 CGColor
    
    return rgbColorRef;
}

//阴影路径
-(void)shadowPath{
    self.timeImage.layer.shadowOpacity = 0.5;
    
    //create a square shadow
//    CGMutablePathRef squarePath = CGPathCreateMutable();
//    CGPathAddRect(squarePath, NULL, self.timeImage.bounds);
//    self.timeImage.layer.shadowPath = squarePath;
//    CGPathRelease(squarePath);
    
    //create a circular shadow
    CGMutablePathRef circlePath = CGPathCreateMutable();
    CGPathAddEllipseInRect(circlePath, NULL, self.timeImage.bounds);
    self.timeImage.layer.shadowPath = circlePath;
    CGPathRelease(circlePath);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
