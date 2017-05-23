//
//  AppDelegate.m
//  ShareExtensionDemo
//
//  Created by fenghj on 16/3/29.
//  Copyright © 2016年 vimfung. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    //获取共享的UserDefaults
    NSUserDefaults *userDefaults = [[NSUserDefaults alloc] initWithSuiteName:@"group.cn.vimfung.ShareExtensionDemo"];
    if ([userDefaults boolForKey:@"has-new-share"])
    {
        NSLog(@"新的分享 : %@", [userDefaults valueForKey:@"share-url"]);
        
        //重置分享标识
        [userDefaults setBool:NO forKey:@"has-new-share"];
    }
}

@end
