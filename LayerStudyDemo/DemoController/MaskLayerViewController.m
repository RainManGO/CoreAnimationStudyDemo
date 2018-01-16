//
//  MaskLayerViewController.m
//  LayerStudyDemo
//
//  Created by apple on 2017/9/27.
//  Copyright © 2017年 ZY. All rights reserved.
//

#import "MaskLayerViewController.h"

@interface MaskLayerViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *maskImage;

@end

@implementation MaskLayerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self maskView];
}

//maskLayer
-(void)maskView{
    CALayer  * maskLayer = [CALayer layer];
    maskLayer.frame  =  self.maskImage.bounds;
    UIImage * image = [UIImage imageNamed:@"time.png"];
    maskLayer.contents =  (__bridge id _Nullable)(image.CGImage);
    
    self.maskImage.layer.mask = maskLayer;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
