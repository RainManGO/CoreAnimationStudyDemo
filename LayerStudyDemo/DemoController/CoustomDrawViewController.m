//
//  CoustomDrawViewController.m
//  LayerStudyDemo
//
//  Created by apple on 2017/9/22.
//  Copyright © 2017年 ZY. All rights reserved.
//

#import "CoustomDrawViewController.h"
#import "ViewController.h"
@interface CoustomDrawViewController ()<CALayerDelegate>
@property (weak, nonatomic) IBOutlet UIButton *btn;

@end

@implementation CoustomDrawViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    self.view.layer.delegate = self;
//    [self.view.layer display];
    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [UIView animateWithDuration:1 delay:0 usingSpringWithDamping:0.5 initialSpringVelocity:0.5 options:0 animations:^{
        _btn.center = self.view.center;
    } completion:^(BOOL finished) {
        
    }];
    
    
}

////layer 绘图
//-(void)customDrawingDemo{
//
//    CALayer * customLayer = [CALayer layer];
//    customLayer.frame = CGRectMake((SCREEN_WIDTH-100)/2, (SCREEN_HEIGHT-100-64)/2, 100.0f, 100.0f);
//    customLayer.backgroundColor = [UIColor yellowColor].CGColor;
//    customLayer.delegate = self;
//    customLayer.contentsScale = [UIScreen mainScreen].scale; //add layer to our view
//    [self.view.layer addSublayer:customLayer];
//    [customLayer display];
//}

//- (void)drawLayer:(CALayer *)layer inContext:(CGContextRef)ctx
//{
//    CGContextSetLineWidth(ctx, 10.0f);
//    CGContextSetStrokeColorWithColor(ctx, [UIColor greenColor].CGColor);
//    CGContextStrokeEllipseInRect(ctx, layer.bounds);
//}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
