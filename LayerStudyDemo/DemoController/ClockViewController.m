//
//  ClockViewController.m
//  LayerStudyDemo
//
//  Created by apple on 2017/9/25.
//  Copyright © 2017年 ZY. All rights reserved.
//

#import "ClockViewController.h"

@interface ClockViewController ()
@property (weak, nonatomic) IBOutlet UILabel *hourLabel;
@property (weak, nonatomic) IBOutlet UILabel *minuteLabel;
@property (weak, nonatomic) IBOutlet UILabel *secondLabel;
@property (nonatomic, weak) NSTimer *timer;
@end

@implementation ClockViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.timer = [NSTimer scheduledTimerWithTimeInterval:1.0f target:self selector:@selector(showTime) userInfo:nil repeats:YES];
}

-(void)showTime{
    NSCalendar  * calendar = [[NSCalendar alloc]initWithCalendarIdentifier:NSCalendarIdentifierChinese];
    NSUInteger units = NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond;
    NSDateComponents *components = [calendar components:units fromDate:[NSDate date]];
    CGFloat hoursAngle = (components.hour / 12.0) * M_PI * 2.0;
    //calculate hour hand angle //calculate minute hand angle
    CGFloat minsAngle = (components.minute / 60.0) * M_PI * 2.0;
    //calculate second hand angle
    CGFloat secsAngle = (components.second / 60.0) * M_PI * 2.0;
    
    //设置锚点
    self.hourLabel.layer.anchorPoint =self.minuteLabel.layer.anchorPoint =self.secondLabel.layer.anchorPoint = CGPointMake(0.5f, 0.9f);
    
    //rotate hands
    self.hourLabel.transform = CGAffineTransformMakeRotation(hoursAngle);
    self.minuteLabel.transform = CGAffineTransformMakeRotation(minsAngle);
    self.secondLabel.transform = CGAffineTransformMakeRotation(secsAngle);
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
