//
//  LayerRouteManager.m
//  LayerStudyDemo
//
//  Created by apple on 2017/9/18.
//  Copyright © 2017年 ZY. All rights reserved.
//

#import "LayerRouteManager.h"
#import "ViewController.h"
#import "LayerContentViewController.h"
#import "CoustomDrawViewController.h"
#import "AnchorPoint ViewController.h"
#import "ClockViewController.h"
#import "HitTestingViewController.h"
#import "VisualEffectViewController.h"
#import "MaskLayerViewController.h"
#import "TensileFilterViewController.h"
#import "CGAffineTransformViewController.h"
#import "ThreeDTransViewController.h"
#import "StereomodelViewController.h"
#import "CAReplicatorLayerViewController.h"
#import "ReflectionViewController.h"
#import "DefaultAnimationViewController.h"
#import "LayerModelViewController.h"
#import "ShowAnnimationViewController.h"
#import "TransitionViewController.h"
#import "CAMediaTimingViewController.h"
#import "ManualAnimationViewController.h"
@implementation LayerRouteManager

-(void)configRoutes{
     UIViewController * currentVc = [self currentViewController];
    // ...
    JLRoutes *routes = [JLRoutes globalRoutes];
    
    [routes addRoute:@"layer/creat/:index" handler:^BOOL(NSDictionary *parameters) {
        ViewController * vc = [ViewController new];
        if(![currentVc.navigationController.topViewController isKindOfClass:[ViewController class]]){
            [currentVc.navigationController pushViewController:vc animated:YES];
        }
        return YES; // return YES to say we have handled the route
    }];
    
    [routes addRoute:@"layer/contents/:index" handler:^BOOL(NSDictionary *parameters) {
        LayerContentViewController * vc = [LayerContentViewController new];
        if(![currentVc.navigationController.topViewController isKindOfClass:[LayerContentViewController class]]){
            [currentVc.navigationController pushViewController:vc animated:YES];
        }
        return YES; // return YES to say we have handled the route
    }];
    
    
    [routes addRoute:@"layer/customDrawing/:index" handler:^BOOL(NSDictionary *parameters) {
        CoustomDrawViewController * vc = [CoustomDrawViewController new];
        if(![currentVc.navigationController.topViewController isKindOfClass:[CoustomDrawViewController class]]){
            [currentVc.navigationController pushViewController:vc animated:YES];
        }
        return YES; // return YES to say we have handled the route
    }];
    
    [routes addRoute:@"layer/anchorPoint/:index" handler:^BOOL(NSDictionary *parameters) {
        AnchorPoint_ViewController * vc = [AnchorPoint_ViewController new];
        if(![currentVc.navigationController.topViewController isKindOfClass:[AnchorPoint_ViewController class]]){
            [currentVc.navigationController pushViewController:vc animated:YES];
        }
        return YES; // return YES to say we have handled the route
    }];
    
    [routes addRoute:@"layer/clock/:index" handler:^BOOL(NSDictionary *parameters) {
        ClockViewController * vc = [ClockViewController new];
        if(![currentVc.navigationController.topViewController isKindOfClass:[ClockViewController class]]){
            [currentVc.navigationController pushViewController:vc animated:YES];
        }
        return YES; // return YES to say we have handled the route
    }];
    
    [routes addRoute:@"layer/hitTesting/:index" handler:^BOOL(NSDictionary *parameters) {
        HitTestingViewController * vc = [HitTestingViewController new];
        if(![currentVc.navigationController.topViewController isKindOfClass:[HitTestingViewController class]]){
            [currentVc.navigationController pushViewController:vc animated:YES];
        }
        return YES; // return YES to say we have handled the route
    }];
    
    [routes addRoute:@"layer/VisualEffect/:index" handler:^BOOL(NSDictionary *parameters) {
        VisualEffectViewController * vc = [VisualEffectViewController new];
        if(![currentVc.navigationController.topViewController isKindOfClass:[VisualEffectViewController class]]){
            [currentVc.navigationController pushViewController:vc animated:YES];
        }
        return YES; // return YES to say we have handled the route
    }];
    
    [routes addRoute:@"layer/maskLayer/:index" handler:^BOOL(NSDictionary *parameters) {
        MaskLayerViewController * vc = [MaskLayerViewController new];
        if(![currentVc.navigationController.topViewController isKindOfClass:[MaskLayerViewController class]]){
            [currentVc.navigationController pushViewController:vc animated:YES];
        }
        return YES; // return YES to say we have handled the route
    }];
    
    [routes addRoute:@"layer/TensileFilter/:index" handler:^BOOL(NSDictionary *parameters) {
        TensileFilterViewController * vc = [TensileFilterViewController new];
        if(![currentVc.navigationController.topViewController isKindOfClass:[TensileFilterViewController class]]){
            [currentVc.navigationController pushViewController:vc animated:YES];
        }
        return YES; // return YES to say we have handled the route
    }];
    
    [routes addRoute:@"layer/CGAffineTransform/:index" handler:^BOOL(NSDictionary *parameters) {
        CGAffineTransformViewController * vc = [CGAffineTransformViewController new];
        if(![currentVc.navigationController.topViewController isKindOfClass:[CGAffineTransformViewController class]]){
            [currentVc.navigationController pushViewController:vc animated:YES];
        }
        return YES; // return YES to say we have handled the route
    }];
    
    [routes addRoute:@"layer/3DAffinetrans/:index" handler:^BOOL(NSDictionary *parameters) {
        ThreeDTransViewController * vc = [ThreeDTransViewController new];
        if(![currentVc.navigationController.topViewController isKindOfClass:[ThreeDTransViewController class]]){
            [currentVc.navigationController pushViewController:vc animated:YES];
        }
        return YES; // return YES to say we have handled the route
    }];
    
    [routes addRoute:@"layer/Stereomodel/:index" handler:^BOOL(NSDictionary *parameters) {
        StereomodelViewController * vc = [StereomodelViewController new];
        if(![currentVc.navigationController.topViewController isKindOfClass:[StereomodelViewController class]]){
            [currentVc.navigationController pushViewController:vc animated:YES];
        }
        return YES; // return YES to say we have handled the route
    }];
    
    [routes addRoute:@"layer/CAReplicatorLayer/:index" handler:^BOOL(NSDictionary *parameters) {
        CAReplicatorLayerViewController * vc = [CAReplicatorLayerViewController new];
        if(![currentVc.navigationController.topViewController isKindOfClass:[CAReplicatorLayerViewController class]]){
            [currentVc.navigationController pushViewController:vc animated:YES];
        }
        return YES; // return YES to say we have handled the route
    }];
    
    [routes addRoute:@"layer/ReflectView/:index" handler:^BOOL(NSDictionary *parameters) {
        ReflectionViewController * vc = [ReflectionViewController new];
        if(![currentVc.navigationController.topViewController isKindOfClass:[ReflectionViewController class]]){
            [currentVc.navigationController pushViewController:vc animated:YES];
        }
        return YES; // return YES to say we have handled the route
    }];
    
    [routes addRoute:@"layer/DefaultAnimation/:index" handler:^BOOL(NSDictionary *parameters) {
        DefaultAnimationViewController * vc = [DefaultAnimationViewController new];
        if(![currentVc.navigationController.topViewController isKindOfClass:[DefaultAnimationViewController class]]){
            [currentVc.navigationController pushViewController:vc animated:YES];
        }
        return YES; // return YES to say we have handled the route
    }];
    
    [routes addRoute:@"layer/LayerModel/:index" handler:^BOOL(NSDictionary *parameters) {
        LayerModelViewController * vc = [LayerModelViewController new];
        if(![currentVc.navigationController.topViewController isKindOfClass:[LayerModelViewController class]]){
            [currentVc.navigationController pushViewController:vc animated:YES];
        }
        return YES; // return YES to say we have handled the route
    }];
    
    [routes addRoute:@"layer/ShowAnimation/:index" handler:^BOOL(NSDictionary *parameters) {
        ShowAnnimationViewController * vc = [ShowAnnimationViewController new];
        if(![currentVc.navigationController.topViewController isKindOfClass:[ShowAnnimationViewController class]]){
            [currentVc.navigationController pushViewController:vc animated:YES];
        }
        return YES; // return YES to say we have handled the route
    }];
    
    [routes addRoute:@"layer/Transition/:index" handler:^BOOL(NSDictionary *parameters) {
        TransitionViewController * vc = [TransitionViewController new];
        if(![currentVc.navigationController.topViewController isKindOfClass:[TransitionViewController class]]){
            [currentVc.navigationController pushViewController:vc animated:YES];
        }
        return YES; // return YES to say we have handled the route
    }];
    
    [routes addRoute:@"layer/CAMediaTiming/:index" handler:^BOOL(NSDictionary *parameters) {
        CAMediaTimingViewController * vc = [CAMediaTimingViewController new];
        if(![currentVc.navigationController.topViewController isKindOfClass:[CAMediaTimingViewController class]]){
            [currentVc.navigationController pushViewController:vc animated:YES];
        }
        return YES; // return YES to say we have handled the route
    }];
    
    [routes addRoute:@"layer/ManualAnimation/:index" handler:^BOOL(NSDictionary *parameters) {
        ManualAnimationViewController * vc = [ManualAnimationViewController new];
        if(![currentVc.navigationController.topViewController isKindOfClass:[ManualAnimationViewController class]]){
            [currentVc.navigationController pushViewController:vc animated:YES];
        }
        return YES; // return YES to say we have handled the route
    }];
}

-(void)openUrl:(NSString *)url withOptions:(NSDictionary *)options {
    dispatch_async(dispatch_get_main_queue(), ^{
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:url] options:options completionHandler:nil];
    });
}

/**
 *          获取当前控制器
 */
-(UIViewController *)currentViewController{
    
    UIViewController * currVC = nil;
    UIViewController * Rootvc = [UIApplication sharedApplication].delegate.window.rootViewController ;
    do {
        if ([Rootvc isKindOfClass:[UINavigationController class]]) {
            UINavigationController * nav = (UINavigationController *)Rootvc;
            UIViewController * v = [nav.viewControllers lastObject];
            currVC = v;
            Rootvc = v.presentedViewController;
            continue;
        }else if([Rootvc isKindOfClass:[UITabBarController class]]){
            UITabBarController * tabVC = (UITabBarController *)Rootvc;
            currVC = tabVC;
            Rootvc = [tabVC.viewControllers objectAtIndex:tabVC.selectedIndex];
            continue;
        }
    } while (Rootvc!=nil);
    
    return currVC;
}

@end
