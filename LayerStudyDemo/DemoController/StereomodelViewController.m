//
//  StereomodelViewController.m
//  LayerStudyDemo
//
//  Created by apple on 2017/10/10.
//  Copyright © 2017年 ZY. All rights reserved.
//

#import "StereomodelViewController.h"
#import <GLKit/GLKit.h>

#define LIGHT_DIRECTION 0, 1, -0.5
#define AMBIENT_LIGHT 0.5

@interface StereomodelViewController ()
@property (strong, nonatomic) IBOutletCollection(UIView) NSArray *faceViews;

@end

@implementation StereomodelViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //创建CATransform3D
    CATransform3D perspective = CATransform3DIdentity;
    //灭点 物体远近缩放比例
    perspective.m34 = -1.0 / 500.0;
    //X轴旋转M_PI_4
    perspective = CATransform3DRotate(perspective, -M_PI_4, 1, 0, 0);
    //Y轴旋转M_PI_4
    perspective = CATransform3DRotate(perspective, -M_PI_4, 0, 1, 0);
    //子Layer整体应用此CATransform3D
    self.view.layer.sublayerTransform = perspective;
    [self setRectModel];
}

//添加正方形View到界面，然后组装
-(void)addFaceViewInContainViewWithTransform:(CATransform3D)transform andIndex:(NSUInteger)index{
    
    UIView * faceView = _faceViews[index];
    faceView.layer.borderWidth = 1;
    faceView.layer.borderColor = [UIColor blackColor].CGColor;
    [self.view addSubview:faceView];
    faceView.center = self.view.center;
    faceView.layer.transform = transform;
    [self applyLightingToFace:faceView.layer];
}

//没有实现光线阴影效果，回来找BUG
- (void)applyLightingToFace:(CALayer *)face
{
    //add lighting layer
    CALayer *layer = [CALayer layer];
    layer.frame = face.bounds;
    [face addSublayer:layer];
    //convert the face transform to matrix
    //(GLKMatrix4 has the same structure as CATransform3D)
    //译者注：GLKMatrix4和CATransform3D内存结构一致，但坐标类型有长度区别，所以理论上应该做一次float到CGFloat的转换，感谢[@zihuyishi](https://github.com/zihuyishi)同学~
    CATransform3D transform = face.transform;
    GLKMatrix4 matrix4 = *(GLKMatrix4 *)&transform;
    GLKMatrix3 matrix3 = GLKMatrix4GetMatrix3(matrix4);
    //get face normal
    GLKVector3 normal = GLKVector3Make(0, 0, 1);
    normal = GLKMatrix3MultiplyVector3(matrix3, normal);
    normal = GLKVector3Normalize(normal);
    //get dot product with light direction
    GLKVector3 light = GLKVector3Normalize(GLKVector3Make(LIGHT_DIRECTION));
    float dotProduct = GLKVector3DotProduct(light, normal);
    //set lighting layer opacity
    CGFloat shadow = 1 + dotProduct - AMBIENT_LIGHT;
    UIColor *color = [UIColor colorWithWhite:0 alpha:shadow];
    layer.backgroundColor = color.CGColor;
}


-(void)setRectModel{
//    CATransform3D  transform = CATransform3DIdentity;
//    transform = CATransform3DTranslate(transform, 0,0, 100);
//    [self addFaceViewInContainViewWithTransform:transform andIndex:0];
//    CATransform3D  transform1 = CATransform3DIdentity;
//    transform1 = CATransform3DTranslate(transform1, 100,0, 0);
//    transform1 = CATransform3DRotate(transform1, M_PI_2, 0, 1, 0);
//    [self addFaceViewInContainViewWithTransform:transform1 andIndex:1];
//    CATransform3D  transform2 = CATransform3DIdentity;
//    transform2 = CATransform3DTranslate(transform2, 0,100, 0);
//    transform2 = CATransform3DRotate(transform2, M_PI_2, 0, 1, 0);
//    [self addFaceViewInContainViewWithTransform:transform2 andIndex:2];
//    [self addFaceViewInContainViewWithTransform:CATransform3DIdentity andIndex:3];
//    [self addFaceViewInContainViewWithTransform:CATransform3DIdentity andIndex:4];
//    [self addFaceViewInContainViewWithTransform:CATransform3DIdentity andIndex:5];
    
    //add cube face 1
    CATransform3D transform = CATransform3DMakeTranslation(0, 0, 50);
    [self addFaceViewInContainViewWithTransform:transform andIndex:0];
    //add cube face 2
    transform = CATransform3DMakeTranslation(50, 0, 0);
    transform = CATransform3DRotate(transform, M_PI_2, 0, 1, 0);
    [self addFaceViewInContainViewWithTransform:transform andIndex:1];
    //add cube face 3
    transform = CATransform3DMakeTranslation(0, -50, 0);
    transform = CATransform3DRotate(transform, M_PI_2, 1, 0, 0);
    [self addFaceViewInContainViewWithTransform:transform andIndex:2];
    //add cube face 4
    transform = CATransform3DMakeTranslation(0, 50, 0);
    transform = CATransform3DRotate(transform, -M_PI_2, 1, 0, 0);
    [self addFaceViewInContainViewWithTransform:transform andIndex:3];
    //add cube face 5
    transform = CATransform3DMakeTranslation(-50, 0, 0);
    transform = CATransform3DRotate(transform, -M_PI_2, 0, 1, 0);
    [self addFaceViewInContainViewWithTransform:transform andIndex:4];
    //add cube face 6
    transform = CATransform3DMakeTranslation(0, 0, -50);
    transform = CATransform3DRotate(transform, M_PI, 0, 1, 0);
    [self addFaceViewInContainViewWithTransform:transform andIndex:5];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
