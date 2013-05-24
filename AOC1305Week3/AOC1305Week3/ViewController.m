//
//  ViewController.m
//  AOC1305Week3
//
//  Created by Brandon McGhee on 5/18/13.
//  Copyright (c) 2013 Brandon McGhee. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{

    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//Add function that returns the sum of two numbers
- (int)add:(NSInteger)first second:(NSInteger)second
{
    int sum;
    
    sum = first + second;
    
    return sum;
    
}
//BOOL function to see if two numbers are equal
- (BOOL)valuesEqual:(NSInteger)first second:(NSInteger)second
{
    if (first == second)
    {
        return true;
    }else{
        return false;
    }
}
//String function that appends a message and a number to be displayed
- (NSString*)Append:(NSString*)first second:(NSString*)second
{
    NSMutableString *appended = [[NSMutableString alloc]init];
    
    [appended appendString:first];
    [appended appendString:second];
    
    return appended;
    
}
//Alert view function that creates the alertview box to be displayed
- (UIAlertView*)displayAlertWithString:(NSString*)theString
{
    UIAlertView *stringAlert = [[UIAlertView alloc]initWithTitle:@"AOC1305 Week 3" message:theString delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    
    return stringAlert;
}



@end
