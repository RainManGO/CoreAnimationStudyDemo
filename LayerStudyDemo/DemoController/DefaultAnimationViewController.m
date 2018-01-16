//
//  DefaultAnimationViewController.m
//  LayerStudyDemo
//
//  Created by apple on 2017/10/12.
//  Copyright © 2017年 ZY. All rights reserved.
//

#import "DefaultAnimationViewController.h"

@interface DefaultAnimationViewController ()
@property (nonatomic, weak) IBOutlet UIView *layerView;
@property (nonatomic, strong)  CALayer *colorLayer;
@end

@implementation DefaultAnimationViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    //create sublayer
    self.colorLayer = [CALayer layer];
    self.colorLayer.frame = CGRectMake(50.0f, 50.0f, 100.0f, 100.0f);
    self.colorLayer.backgroundColor = [UIColor blueColor].CGColor;
    
    CATransition * transition = [CATransition animation];
    transition.type = kCATransitionReveal;
    transition.subtype = kCATransitionFromLeft;
    self.colorLayer.actions = @{@"backgroundColor": transition};
    //add it to our view
    [self.layerView.layer addSublayer:self.colorLayer];
}

- (IBAction)changeColor
{
    
#if 0
    [CATransaction begin];
    //set the animation duration to 1 second
    [CATransaction setAnimationDuration:1.0];
    CGAffineTransform transform = self.colorLayer.affineTransform;
    transform = CGAffineTransformRotate(transform, M_PI_2);
    self.colorLayer.affineTransform = transform;
    
    //randomize the layer background color
    NSLog(@"%d--%d",arc4random(),INT_MAX);
    CGFloat red = arc4random() / (CGFloat)INT_MAX;
    CGFloat green = arc4random() / (CGFloat)INT_MAX;
    CGFloat blue = arc4random() / (CGFloat)INT_MAX;
    self.colorLayer.backgroundColor = [UIColor colorWithRed:red green:green blue:blue alpha:1.0].CGColor;
    
    [CATransaction commit];
    
#else
 //显示dong
//    [CATransaction setCompletionBlock:^{
//        //rotate the layer 90 degrees
//        CGAffineTransform transform = self.colorLayer.affineTransform;
//        transform = CGAffineTransformRotate(transform, M_PI_2);
//        self.colorLayer.affineTransform = transform;
//
//        //randomize the layer background color
//        NSLog(@"%d--%d",arc4random(),INT_MAX);
//        CGFloat red = arc4random() / (CGFloat)INT_MAX;
//        CGFloat green = arc4random() / (CGFloat)INT_MAX;
//        CGFloat blue = arc4random() / (CGFloat)INT_MAX;
//        self.colorLayer.backgroundColor = [UIColor colorWithRed:red green:green blue:blue alpha:1.0].CGColor;
//
//    }];
    
            CGFloat red = arc4random() / (CGFloat)INT_MAX;
            CGFloat green = arc4random() / (CGFloat)INT_MAX;
            CGFloat blue = arc4random() / (CGFloat)INT_MAX;
            self.colorLayer.backgroundColor = [UIColor colorWithRed:red green:green blue:blue alpha:1.0].CGColor;
#endif
}

- (IBAction)changeContainerColor:(UIButton *)sender {
    
    [CATransaction setCompletionBlock:^{
        
        //randomize the layer background color
        NSLog(@"%d--%d",arc4random(),INT_MAX);
        CGFloat red = arc4random() / (CGFloat)INT_MAX;
        CGFloat green = arc4random() / (CGFloat)INT_MAX;
        CGFloat blue = arc4random() / (CGFloat)INT_MAX;
        self.view.layer.backgroundColor = [UIColor colorWithRed:red green:green blue:blue alpha:1.0].CGColor;
        
    }];
    
}

@end
