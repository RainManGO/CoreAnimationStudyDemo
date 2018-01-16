//
//  AnchorPoint ViewController.m
//  LayerStudyDemo
//
//  Created by apple on 2017/9/22.
//  Copyright © 2017年 ZY. All rights reserved.
//

#import "AnchorPoint ViewController.h"

@interface AnchorPoint_ViewController ()

@end

@implementation AnchorPoint_ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
//    [self anchorPoint];
}

-(void)anchorPoint{
    CALayer * customLayer = [CALayer layer];
    customLayer.frame = CGRectMake((SCREEN_WIDTH-100)/2, (SCREEN_HEIGHT-100-64)/2, 100.0f, 100.0f);
    customLayer.backgroundColor = [UIColor yellowColor].CGColor;
    customLayer.contentsScale = [UIScreen mainScreen].scale; //add layer to our view
    customLayer.anchorPoint = CGPointMake(0.5f, 0.9f);
    [self.view.layer addSublayer:customLayer];
    NSLog(@"%f,%f",customLayer.anchorPoint.x,customLayer.anchorPoint.y);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
