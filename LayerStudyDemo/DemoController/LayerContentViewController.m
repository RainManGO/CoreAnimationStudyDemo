//
//  LayerContentViewController.m
//  LayerStudyDemo
//
//  Created by apple on 2017/9/19.
//  Copyright © 2017年 ZY. All rights reserved.
//

#import "LayerContentViewController.h"

@interface LayerContentViewController ()

@end

@implementation LayerContentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self contentImageDemo];
}

//寄宿图
-(void)contentImageDemo{
    
    UIImage * image =  [UIImage imageNamed:@"timg.png"];
    
    CALayer   *  imageLayer = [CALayer layer];
    imageLayer.frame = CGRectMake(50, 200, 300, 300);
   
    //contents 图层的寄宿图 是一个CGImageRef类型，它是一个指向CGImage结构的指针
    imageLayer.contents = (__bridge id _Nullable)(image.CGImage);
   
    //contentsGravity的目的是为了决定内容在图层的边界中怎么对齐，我们将使用kCAGravityResizeAspect，它的效果等同于UIViewContentModeScaleAspectFit， 同时它还能在图层中等比例拉伸以适应图层的边界。
    imageLayer.contentsGravity = kCAGravityResizeAspect;
   
   //contentsScale属性定义了寄宿图的像素尺寸和视图大小的比例，默认情况下它是一个值为1.0的浮点数。
   //contentsScale的目的并不是那么明显。它并不是总会对屏幕上的寄宿图有影响。如果你尝试对我们的例子设置不同的值，你就会发现根本没任何影响。因为contents由于设置了contentsGravity属性，所以它已经被拉伸以适应图层的边界。
    imageLayer.contentsScale= 5.f;
   
   //我们裁切图片的时候肯定用过这个属性，是否绘制超出吧边界的视图
    imageLayer.masksToBounds = YES;
   
   //这个不用介绍了吧
    imageLayer.cornerRadius = 5.0f;
   
   //这个属性需要介绍下，我们以前见过美工给图在一张图上，我们应该怎么用呢。用这个属性我们就可以切出我们要的那一部分了。
    imageLayer.contentsRect = CGRectMake(0, 0, 0.5, 0.5);
   
   //contentsCenter其实是一个CGRect，它定义了一个固定的边框和一个在图层上可拉伸的区域。 改变contentsCenter的值并不会影响到寄宿图的显示，除非这个图层的大小改变了，你才看得到效果。
    imageLayer.contentsCenter = CGRectMake(0, 0, 0.1, 0.1);
    [self.view.layer addSublayer:imageLayer];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
