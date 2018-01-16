//
//  LayerRouteManager.h
//  LayerStudyDemo
//
//  Created by apple on 2017/9/18.
//  Copyright © 2017年 ZY. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <JLRoutes/JLRoutes.h>


@interface LayerRouteManager : NSObject
-(void)configRoutes;
-(void)openUrl:(NSString *)url withOptions:(NSDictionary *)options;
@end
