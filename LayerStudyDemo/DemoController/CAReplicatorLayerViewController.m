//
//  CAReplicatorLayerViewController.m
//  LayerStudyDemo
//
//  Created by apple on 2017/10/11.
//  Copyright © 2017年 ZY. All rights reserved.
//

#import "CAReplicatorLayerViewController.h"

@interface CAReplicatorLayerViewController ()

@end

@implementation CAReplicatorLayerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CAReplicatorLayer * replicatorLayer = [CAReplicatorLayer layer];
    replicatorLayer.frame = self.view.bounds;
    [self.view.layer addSublayer:replicatorLayer];
    
    replicatorLayer.instanceCount = 10;
    
    //apply a transform for each instance
    CATransform3D transform = CATransform3DIdentity;
    transform = CATransform3DTranslate(transform, 0, 200, 0);
    transform = CATransform3DRotate(transform, M_PI / 5.0, 0, 0, 1);
    transform = CATransform3DTranslate(transform, 0, -200, 0);
    replicatorLayer.instanceTransform = transform;
    
    //apply a color shift for each instance
    replicatorLayer.instanceBlueOffset = -0.1;
    replicatorLayer.instanceGreenOffset = -0.1;
    
    //create a sublayer and place it inside the replicator
    CALayer *layer = [CALayer layer];
    layer.frame = CGRectMake(100, 100.0f, 100.0f, 100.0f);
    layer.backgroundColor = [UIColor whiteColor].CGColor;
    [replicatorLayer addSublayer:layer];
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
