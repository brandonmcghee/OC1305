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
    //Brandon J. McGhee
    
    //I am about to tell you a story that involves the BBC's fictional television show called "Doctor Who".
    //I will be using elements from the story and mixing them into code.  I will also explain the code along the way.
    
    //Declaration of the speed of a angelSpeed as a float
    float angelSpeed = 100.55f;
    
    //Using NSLog to output to dialog and variable values to the console
    NSLog(@"--THE DOCTOR, RIVER, AND AMY ARE ESCAPING THE WEEPING ANGELS--");
    //Outputting the angelSpeed to the console as a float
    NSLog(@"Doctor: River, the speed of a Weeping Angel is %f meters per second", angelSpeed);
    //Casting angelSpeed as an integer and outputting the data, plus the dialogue to the console
    NSLog(@"River: We don't have time for decimal places, can't we just say their speed is %d meters per second", (int)angelSpeed);
    //Continuing the story via NSLog output
    NSLog(@"Doctor: Fair enough River, but those extra decimals could be what saves your life.  Well that and never visiting a library");
    NSLog(@"River: What?");
    NSLog(@"Doctor: Nothing, moving on");
    
    //Declaration of sonicSetting as float, doorNumber as integer and doorLocked as BOOL
    float sonicSetting = 8.69f;
    int doorNumber = 42;
    BOOL doorLocked = YES;
    
    //Continued Dialogue using NSLog for output
    NSLog(@"Doctor: Amy take the sonic screwdriver and find door 42.  River and I will hold off the angels");
    NSLog(@"Amy: Doctor, how do I...");
    NSLog(@"Doctor: Just make sure the setting is higher than 8 but less than 9, it will work, trust me");
    NSLog(@"Amy: Whatever you say Doctor");
    NSLog(@"--AMY IS SEARCHING FOR SOME DOORS");
    NSLog(@"--AMY FOUND A DOOR--");
    
    
    //IF ELSE statement that is checking the sonicSetting to see if it is greater than 8 and "&&" less than 9
    if ((sonicSetting > 8) && (sonicSetting < 9))
    {
        //Output via NSLog to console to continue the story if above statement is true
        NSLog(@"Amy: I hope this is the right one");
        
        //Nested IF ELSE statement that checks if doorLocked is YES and "&&" doorNumber equals 42
        if ((doorLocked == YES) && (doorNumber == 42))
        {
            //Output via NSLog to console to continue the story if above nested IF ELSE statement is true.
            //If above statement is not true then code will procede to the else statement directly below
            NSLog(@"......SONIC MAKES WHIRRING SOUND.......");
            NSLog(@"--AMY SONICED THE DOOR AND FOUND TARDIS--");
            NSLog(@"Amy: Got It!");
        }else
        {
            //Output via NSLog to console to continue the story if nested statement above is false
            NSLog(@"--THE DOOR WAS UNLOCKED--");
            NSLog(@"Amy: Well that was easy, DOCTOR!");
        }
    } else if ((sonicSetting > 9) || (sonicSetting < 8)) //Using OR "||" to evaulate the sonicSetting
    {
        //Output via NSLog to console to continue the story if the initial IF statement is false and the ELSE IF is true
        NSLog(@"--AMY NEEDS TO FIND THE CORRECT SETTING--");
        NSLog(@"Amy: Curse this green clawed devil");
    } else
    {
        //Output via NSLog to contiue the story if either the initial IF statement and the ELSE IF statements are false
        NSLog(@"Amy: Blasted screwdriver never works for me, Doctor, where are you!");
    }
    
    //For loop checks the inVortex variable and increments until it reaches 12, showing how long the TARDIS is in the vortex
    for (int inVortex = 0; inVortex <= 12; inVortex++)
    {
        //Output to console via NSLog to continue the story
        NSLog(@"--TARDIS IS IN THE TIME VORTEX--");
        NSLog(@"...WHOOORP...");
    }
    
    //For loop checks to see how long the Doctor is piloting the tardis, increments until it reaches 3
    for (int piloting = 0; piloting <= 3; piloting++)
    {
        //Output to console via NSLog to continue the story
        NSLog(@"--THE DOCTOR IS PILOTING THE TARDIS--");
        
        //Nested For loop checks to see what Amy and River are doing, checks hangon and increments until it reaches 2
        for (int hangon = 0; hangon <= 2; hangon++)
        {
            //Output to console via NSLog to contiunue the story
            NSLog(@"--AMY IS TRYING TO HOLD ON LIKE ALWAYS--");
            NSLog(@"--RIVER IS SHAKING HER HEAD--");
        }
    }
    
    //Declaration of landing variable as integer, to be used in following while loop to see if TARDIS has landed
    int landing = 10;
    
    //Output to console via NSLog to continue the story
    NSLog(@"Doctor: Approaching the 1980s, everybody hold on!");
    
    //While loop evaluating landing integer variable, continues while landing is greater than 0
    while (landing > 0)
    {
        //Output to console via NSLog to contiue the story
        NSLog(@"Doctor:Landing in %d", landing);
        //Decrementing the landing integer variable each time the loop runs, if not the TARDIS would be in an infinite loop!
        landing--;
    }
    
    //Finale of the story, of course using NSLog and outputting to the console
    NSLog(@"--THE TARDIS HAS LANDED--");
    NSLog(@"--TARDIS DOOR OPENS, OUT STEPS THE DOCTOR, RIVER, AND AMY--");
    NSLog(@"Doctor: Well, we are here");
    NSLog(@"River: And where would here be sweetie?");
    NSLog(@"Amy: I think its a David Bowie concert");
    NSLog(@"Doctor: Precisely, now come along Ponds!");
    
    NSLog(@"--THE END--");


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
