//
//  AppDelegate.m
//  IAPDemo
//
//  Created by luoyl on 12-3-24.
//  Copyright (c) 2012年 http://luoyl.info. All rights reserved.
//

#import "AppDelegate.h"

#import "ProductsViewController.h"

#import "IAPHandler.h"

@implementation AppDelegate

@synthesize window = _window;
@synthesize viewController = _viewController;

- (void)dealloc
{
    [_window release];
    [_viewController release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    UINavigationController *navController = [[[UINavigationController alloc]initWithRootViewController:[[[ProductsViewController alloc] init] autorelease]] autorelease];
    self.viewController = navController;
    self.window.rootViewController = self.viewController;
    [self.window makeKeyAndVisible];
    [IAPHandler initECPurchaseWithHandler];
    
    return YES;
}

@end
