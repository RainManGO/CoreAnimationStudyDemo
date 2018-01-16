//
//  TransitionViewController.m
//  LayerStudyDemo
//
//  Created by apple on 2017/10/17.
//  Copyright © 2017年 ZY. All rights reserved.
//

#import "TransitionViewController.h"

@interface TransitionViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (nonatomic,copy)NSArray *  images;

@end

@implementation TransitionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.images = @[[UIImage imageNamed:@"Ship.png"],
                    [UIImage imageNamed:@"time.png"],
                    [UIImage imageNamed:@"yaya.png"],
                    [UIImage imageNamed:@"yoyo.png"]];
}

- (IBAction)switchImage
{
    //set up crossfade transition
    CATransition *transition = [CATransition animation];
    [CATransaction setAnimationDuration:2.0];
    transition.type = kCATransitionFade;
    //apply transition to imageview backing layer
    [self.imageView.layer addAnimation:transition forKey:nil];
    //cycle to next image
    UIImage *currentImage = self.imageView.image;
    NSUInteger index = [self.images indexOfObject:currentImage];
    index = (index + 1) % [self.images count];
    self.imageView.image = self.images[index];
}

- (IBAction)switchImageMode2
{
    [UIView transitionWithView:self.imageView duration:1.0
                       options:UIViewAnimationOptionTransitionCurlUp
                    animations:^{
                        //cycle to next image
                        UIImage *currentImage = self.imageView.image;
                        NSUInteger index = [self.images indexOfObject:currentImage];
                        index = (index + 1) % [self.images count];
                        self.imageView.image = self.images[index];
                    }
                    completion:NULL];
}


- (IBAction)performTransition
{
    //preserve the current view snapshot
    UIGraphicsBeginImageContextWithOptions(self.view.bounds.size, YES, 0.0);
    [self.view.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *coverImage = UIGraphicsGetImageFromCurrentImageContext();
    //insert snapshot view in front of this one
    UIView *coverView = [[UIImageView alloc] initWithImage:coverImage];
    coverView.frame = self.view.bounds;
    [self.view addSubview:coverView];
    //update the view (we'll simply randomize the layer background color)
    CGFloat red = arc4random() / (CGFloat)INT_MAX;
    CGFloat green = arc4random() / (CGFloat)INT_MAX;
    CGFloat blue = arc4random() / (CGFloat)INT_MAX;
    self.view.backgroundColor = [UIColor colorWithRed:red green:green blue:blue alpha:1.0];
    //perform animation (anything you like)
    [UIView animateWithDuration:1.0 animations:^{
        //scale, rotate and fade the view
        CGAffineTransform transform = CGAffineTransformMakeScale(0.01, 0.01);
        transform = CGAffineTransformRotate(transform, M_PI_2);
        coverView.transform = transform;
        coverView.alpha = 0.0;
    } completion:^(BOOL finished) {
        //remove the cover view now we're finished with it
        [coverView removeFromSuperview];
        [self.navigationController popViewControllerAnimated:YES];
    }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
