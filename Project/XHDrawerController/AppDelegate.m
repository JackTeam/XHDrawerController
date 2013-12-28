//
//  AppDelegate.m
//  XHDrawerController
//
//  Created by 曾 宪华 on 13-12-27.
//  Copyright (c) 2013年 曾宪华 开发团队(http://iyilunba.com ) 本人QQ:543413507. All rights reserved.
//

#import "AppDelegate.h"
#import "XHExampleLeftSideDrawerViewController.h"
#import "XHExampleRightSideDrawerViewController.h"
#import "XHExampleCenterSideDrawerViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    
    XHDrawerController *drawerController = [[XHDrawerController alloc] init];
    drawerController.springAnimationOn = YES;
    
    XHExampleLeftSideDrawerViewController *leftSideDrawerViewController = [[XHExampleLeftSideDrawerViewController alloc] init];
    
    XHExampleRightSideDrawerViewController *rightSideDrawerViewController = [[XHExampleRightSideDrawerViewController alloc] init];
    
    XHExampleCenterSideDrawerViewController *centerSideDrawerViewController = [[XHExampleCenterSideDrawerViewController alloc] init];

    drawerController.leftViewController = leftSideDrawerViewController;
    drawerController.rightViewController = rightSideDrawerViewController;
    drawerController.centerViewController = [[UINavigationController alloc] initWithRootViewController:centerSideDrawerViewController];
    
    UIImageView *backgroundImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"MenuBackground"]];
    [backgroundImageView setContentMode:UIViewContentModeCenter];
    drawerController.backgroundView = backgroundImageView;

    
    self.window.rootViewController = drawerController;
    
    [self.window makeKeyAndVisible];
    
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
