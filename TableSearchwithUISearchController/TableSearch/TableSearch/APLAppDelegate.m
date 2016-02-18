/*
 Copyright (C) 2015 Apple Inc. All Rights Reserved.
 See LICENSE.txt for this sample’s licensing information
 
 Abstract:
 The application delegate class used for setting up our data model and state restoration.
 */

#import "APLAppDelegate.h"
#import "MPRestaurant.h"
#import "APLMainTableViewController.h"

@implementation APLAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    // load our data source and hand it over to APLMainTableViewController
    //
    NSMutableArray *restaurants = [[NSMutableArray alloc] init];
    
    UINavigationController *navigationController = (UINavigationController *)[self.window rootViewController];
    // note we want the first view controller (not the visibleViewController) in case
    // we are being store from UIStateRestoration
    //
    APLMainTableViewController *viewController = (APLMainTableViewController *)navigationController.viewControllers[0];
    viewController.restaurants = restaurants;
    
    return YES;
}


#pragma mark - UIStateRestoration

- (BOOL)application:(UIApplication *)application shouldSaveApplicationState:(NSCoder *)coder {
    return YES;
}

- (BOOL)application:(UIApplication *)application shouldRestoreApplicationState:(NSCoder *)coder {
    return YES;
}

@end
