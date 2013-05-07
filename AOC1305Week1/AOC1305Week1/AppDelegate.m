//
//  AppDelegate.m
//  AOC1305Week1
//
//  Created by Brandon McGhee on 5/6/13.
//  Copyright (c) 2013 Brandon McGhee. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (void)dealloc
{
    [_window release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    //Week 1 AOC Project
    
    /*Create a variable using the float data type. Cast the float to an int and using NSLog, output both the initial
     float value as well as the int value. */
    
    float angelSpeed = 100.55f;
    
    NSLog(@"--THE DOCTOR, RIVER, AND AMY ARE ESCAPING THE WEEPING ANGELS--");
    NSLog(@"Doctor: River, the speed of a Weeping Angel is %f meters per second", angelSpeed);
    NSLog(@"River: We don't have time for decimal places, can't we just say their speed is %d meters per second", (int)angelSpeed);
    NSLog(@"Doctor: Fair enough River, but those extra decimals could be what saves your life.  Well that and never visiting a library");
    NSLog(@"River: What?");
    NSLog(@"Doctor: Nothing, moving on");
    
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
