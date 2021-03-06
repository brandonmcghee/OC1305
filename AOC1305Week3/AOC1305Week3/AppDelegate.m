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
    
    //Brandon McGhee AOC1305
    //Week 3 Project
    
    //Int variable to compare and display
    int firstValue = 10;
    int secondValue = 11;
    
    //Return value function call to add firstValue and secondValue together and return result
    int returnValue = [self.viewController add:firstValue second:secondValue];
    //BOOL value to see if firstValue and Second Value are equal, returns TRUE or FALSE
    BOOL areTheseEqual = [self.viewController valuesEqual:firstValue second:secondValue];
    //Placing returnValue integer into an NSNumber so it can be put into an NSString
    NSNumber *intToAppend = [[NSNumber alloc] initWithInteger:returnValue];
    //NSString variable that will display the intToAppend which contains the sum of firstValue and secondValue
    NSString *stringNumberIs = [NSString stringWithFormat:@"The number is %d", [intToAppend intValue]];
    //NSString variable that will contain firstValue and secondValue so they can be displayed in the alert view
    NSString *stringNumbersAre;
    
    //Pop up alert box declaration
    UIAlertView *equalAlert;
    UIAlertView *conCatAlert;
    
    //Logic statement to see if the BOOl areTheseEqual is true or false, and assign the value to stringNumbersAre so it may be displayed
    if (areTheseEqual == TRUE)
    {
        stringNumbersAre = [NSString stringWithFormat:@"%d and %d are equal!", firstValue, secondValue];
    }else
    {
        stringNumbersAre = [NSString stringWithFormat:@"%d and %d are NOT equal!", firstValue, secondValue];
    }
    
    //View Controller setup for the UIAlertView
    equalAlert = [self.viewController displayAlertWithString:stringNumberIs];
    //Displaying Alert View
    [equalAlert show];
    //View Controller setup for the UIAlertView
    conCatAlert = [self.viewController displayAlertWithString:stringNumbersAre];
    //Displaying Alert View
    [conCatAlert show];
    
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
