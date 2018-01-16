//
//  HitTestingViewController.m
//  LayerStudyDemo
//
//  Created by apple on 2017/9/25.
//  Copyright © 2017年 ZY. All rights reserved.
//

#import "HitTestingViewController.h"

@interface HitTestingViewController ()
@property (weak, nonatomic) IBOutlet UIView *wildView;
@property (nonatomic, strong) CALayer *innerLayer;
@end

@implementation HitTestingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self creatInnerLayer];
}

-(void)creatInnerLayer{
    self.innerLayer = [CALayer layer];
    self.innerLayer.frame = CGRectMake((self.wildView.frame.size.width-100)/2, (self.wildView.frame.size.height-100)/2, 100.0f, 100.0f);
    self.innerLayer.backgroundColor = [UIColor blueColor].CGColor;
    //add it to our view
    [self.wildView.layer addSublayer:self.innerLayer];
}

// containsPoint 判断较麻烦，需要把坐标转换图层成每个坐标系下的坐标
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    CGPoint point  =  [[touches anyObject] locationInView:self.view];
    //将点击的点从以 self.view.layer 为父类的坐标系转到self.wildView.layer为父类的坐标系
    point = [self.wildView.layer convertPoint:point fromLayer:self.view.layer];
    if ([self.wildView.layer containsPoint:point]) {
        //convert point to blueLayer’s coordinates
        point = [self.innerLayer convertPoint:point fromLayer:self.wildView.layer];
        if ([self.innerLayer containsPoint:point]) {
            [[[UIAlertView alloc] initWithTitle:@"Inside innerLayer Layer"
                                        message:nil
                                       delegate:nil
                              cancelButtonTitle:@"OK"
                              otherButtonTitles:nil] show];
        } else {
            [[[UIAlertView alloc] initWithTitle:@"Inside wildView Layer"
                                        message:nil
                                       delegate:nil
                              cancelButtonTitle:@"OK"
                              otherButtonTitles:nil] show];
        }
    }
    
}
 

//-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
//
//    CGPoint point  =  [[touches anyObject] locationInView:self.view];
//    //返回点击layer
//    CALayer * hitLayer = [self.wildView.layer hitTest:point];
//    if (hitLayer==self.innerLayer) {
//
//            [[[UIAlertView alloc] initWithTitle:@"Inside innerLayer Layer"
//                                        message:nil
//                                       delegate:nil
//                              cancelButtonTitle:@"OK"
//                              otherButtonTitles:nil] show];
//    } else if(hitLayer==self.wildView.layer){
//            [[[UIAlertView alloc] initWithTitle:@"Inside wildView Layer"
//                                        message:nil
//                                       delegate:nil
//                              cancelButtonTitle:@"OK"
//                              otherButtonTitles:nil] show];
//    }else{
//        [[[UIAlertView alloc] initWithTitle:@"Inside  View"
//                                    message:nil
//                                   delegate:nil
//                          cancelButtonTitle:@"OK"
//                          otherButtonTitles:nil] show];
//    }
//}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
