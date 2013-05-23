//
//  AppDelegate.m
//  AOC1305Week3
//
//  Created by Brandon McGhee on 5/18/13.
//  Copyright (c) 2013 Brandon McGhee. All rights reserved.
//

#import "AppDelegate.h"

#import "ViewController.h"

@implementation AppDelegate

- (void)dealloc
{
    [_window release];
    [_viewController release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
    self.viewController = [[[ViewController alloc] initWithNibName:@"ViewController" bundle:nil] autorelease];
    
    
    self.window.rootViewController = self.viewController;
    [self.window makeKeyAndVisible];
    
    int firstValue = 9;
    int secondValue = 10;
    NSString *equalString;
    
    int returnValue = [self.viewController add:10 second:5];
    BOOL areTheseEqual = [self.viewController valuesEqual:9 second:9];
    NSNumber *intToAppend = [[NSNumber alloc] initWithInteger:returnValue];
    NSString *stringAppend = [NSString stringWithFormat:@"The number is %d", [intToAppend intValue]];
    UIAlertView *conCatAlert = [self.viewController displayAlertWithString:stringAppend firstFactor:0 secondFactor:0];
    
    [conCatAlert show];
    
    if (areTheseEqual == TRUE)
    {
        equalString = @"YES";
    }else
    {
        equalString = @"NO";
    }
    
    UIAlertView *equalAlert = [self.viewController displayAlertWithString:equalString firstFactor:firstValue secondFactor:secondValue];

    [equalAlert show];
    
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
