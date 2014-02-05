//
//  SWAppDelegate.m
//  UIRefreshControlFrankTest
//
//  Created by Samuel Ward on 26/01/2014.
//  Copyright (c) 2014 Samuel Ward. All rights reserved.
//

#import "SWAppDelegate.h"
#import "SWViewController.h"

@implementation SWAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    
    SWViewController *test = [[SWViewController alloc] init];
    UINavigationController *nav = [[UINavigationController alloc]  initWithRootViewController:test];
    
    self.window.rootViewController = nav;
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
