//
//  AppDelegate.m
//  MediaHub
//
//  Created by Wu, Shifan on 5/1/17.
//  Copyright © 2017 ShifanW. All rights reserved.
//

#import "AppDelegate.h"
#import "MHiTunesSearchViewModel.h"
#import "MHiTunesSearchViewController.h"
#import "SplitViewController.h"

@interface AppDelegate ()

@property (strong, nonatomic) MHiTunesSearchViewModel *viewModel;

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    // create split vc
    UISplitViewController *splitVC = [[SplitViewController alloc] init];
    // create list vc
    UIViewController *vc = [self createInitialViewController];
    // link splictVC with vc
    UISplitViewController *originalSplictVC = (UISplitViewController *)self.window.rootViewController;
    UINavigationController *nav1 = [[UINavigationController alloc] initWithRootViewController:vc];
    UINavigationController *nav2 = [[UINavigationController alloc] initWithRootViewController:originalSplictVC.viewControllers.lastObject];
    splitVC.viewControllers = @[nav1];
    
    // chagne rootVC's splict view.
    self.window.rootViewController = splitVC;
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


- (UIViewController *)createInitialViewController {

    self.viewModel = [MHiTunesSearchViewModel new];
    return [[MHiTunesSearchViewController alloc] initWithViewModel:self.viewModel];
}

@end
