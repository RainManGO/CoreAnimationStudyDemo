//
//  TensileFilterViewController.m
//  LayerStudyDemo
//
//  Created by apple on 2017/9/28.
//  Copyright © 2017年 ZY. All rights reserved.
//

#import "TensileFilterViewController.h"

@interface TensileFilterViewController ()
@property (strong, nonatomic) IBOutletCollection(UIView) NSArray *LedViews1;
@property (strong, nonatomic) IBOutletCollection(UIView) NSArray *LedView2;
@property (nonatomic, weak) NSTimer *timer;
@end

@implementation TensileFilterViewController
{
    NSArray * array;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    array = @[self.LedViews1,self.LedView2];
    UIImage *digits = [UIImage imageNamed:@"led.png"];
    for (int i=0; i<array.count; i++) {
        for (UIView *view in array[i]) {
            //set contents
            view.layer.contents = (__bridge id)digits.CGImage;
            view.layer.contentsRect = CGRectMake(0, 0, 0.1, 1.0);
            view.layer.contentsGravity = kCAGravityResizeAspect;
            if (i==1) {
                view.layer.minificationFilter = kCAFilterNearest;
            }
        }
    }
    
    //start timer
    self.timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(tick) userInfo:nil repeats:YES];
    
}

- (void)tick
{
    //convert time to hours, minutes and seconds
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierRepublicOfChina];
    NSUInteger units = NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond;
    
    NSDateComponents *components = [calendar components:units fromDate:[NSDate date]];
    
    for (int i=0; i<array.count; i++) {
        //set hours
        [self setDigit:components.hour / 10 forView:array[i][0]];
        [self setDigit:components.hour % 10 forView:array[i][1]];
        
        //set minutes
        [self setDigit:components.minute / 10 forView:array[i][2]];
        [self setDigit:components.minute % 10 forView:array[i][3]];
        
        //set seconds
        [self setDigit:components.second / 10 forView:array[i][4]];
        [self setDigit:components.second % 10 forView:array[i][5]];
    }
}


- (void)setDigit:(NSInteger)digit forView:(UIView *)view
{
    //adjust contentsRect to select correct digit
    view.layer.contentsRect = CGRectMake(digit * 0.1, 0, 0.1, 1.0);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
