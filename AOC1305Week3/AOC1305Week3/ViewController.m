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
    //Week 3 AOC1305
    //Brandon McGhee
    

    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (int)add:(NSInteger)first second:(NSInteger)second
{
    int sum;
    
    sum = first + second;
    
    return sum;
    
}

- (BOOL)valuesEqual:(NSInteger)first second:(NSInteger)second
{
    if (first == second)
    {
        return true;
    }else{
        return false;
    }
}

- (NSString*)Append:(NSString*)first second:(NSString*)second
{
    NSMutableString *appended = [[NSMutableString alloc]init];
    
    [appended appendString:first];
    [appended appendString:second];
    
    return appended;
    
}

- (UIAlertView*)displayAlertWithString:(NSString*)theString
{
    UIAlertView *stringAlert = [[UIAlertView alloc]initWithTitle:@"AOC1305 Week 3" message:theString delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    
    return stringAlert;
}



@end
