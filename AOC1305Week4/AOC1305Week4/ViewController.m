//
//  ViewController.m
//  AOC1305Week4
//
//  Created by Brandon McGhee on 5/26/13.
//  Copyright (c) 2013 Brandon McGhee. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    //Float to capture the width of current device
    float deviceWidth = CGRectGetWidth([[UIScreen mainScreen] bounds]);
    float deviceHeight = CGRectGetHeight([[UIScreen mainScreen] bounds]);
    
    //Date
    NSDate *currentDate = [NSDate date];
    
    //Label for "Username:"
    UILabel *labelName = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 10.0f, deviceWidth/2, 31.0f)];
    labelName.text = @"Username:";
    labelName.textColor = [UIColor blackColor];
    
    //Text Input for "Username:" label
    UITextField *inputName = [[UITextField alloc] initWithFrame:CGRectMake(90.0f, 10.0f, deviceWidth/1.5, 31.0f)];
    [inputName setBorderStyle:(UITextBorderStyleRoundedRect)];
    
    //Login Button
    UIButton *btnLogin = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btnLogin.frame = CGRectMake(deviceWidth/1.5, 300.0f, 100.0f, 30.0f);
    [btnLogin setTitle:@"Login" forState:UIControlStateNormal];
    
    //Label for "Please Enter Username"
    UILabel *labelPEName = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, deviceHeight/5, deviceWidth, 100.0f)];
    labelPEName.backgroundColor = [UIColor grayColor];
    labelPEName.textColor = [UIColor blueColor];
    labelPEName.text = @"Please Enter Username";
    labelPEName.textAlignment = NSTextAlignmentCenter;
    
    self.view.backgroundColor = [UIColor whiteColor];
    //Adding elements to the view to be displayed
    [self.view addSubview:labelName];
    [self.view addSubview:inputName];
    [self.view addSubview:btnLogin];
    [self.view addSubview:labelPEName];

    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
