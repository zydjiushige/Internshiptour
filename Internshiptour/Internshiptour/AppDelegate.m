//
//  AppDelegate.m
//  Internshiptour
//
//  Created by dexiang lu on 16/1/11.
//  Copyright © 2016年 dexiang lu. All rights reserved.
//

#import "AppDelegate.h"
#import "tabBar.h"
#import <UMengAnalytics/MobClick.h>
#import <PayPal-iOS-SDK/PayPalMobile.h>
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    


    tabBar *mytabBar=[[tabBar alloc] init];
    self.window.rootViewController=mytabBar;
    
    //  友盟统计
    [MobClick startWithAppkey:@"56c6be25e0f55a7a9a0000ef" reportPolicy:BATCH channelId:@"Web"];
    /*
     将channelId:@"Web" 中的Web 替换为您应用的推广渠道。channelId为nil或@""时，默认会被当作@"App Store"渠道
     */
    [MobClick profileSignInWithPUID:@"playerID"];
    
    // 统计第三方登陆
//    [MobClick profileSignInWithPUID:@"playerID" provider:@"WB"];
    
    
    // PayPal
    
    [PayPalMobile initializeWithClientIdsForEnvironments:@{PayPalEnvironmentProduction : @"YOUR_CLIENT_ID_FOR_PRODUCTION",
                                                           PayPalEnvironmentSandbox : @"YOUR_CLIENT_ID_FOR_SANDBOX"}];
    
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
