//
//  ViewController.m
//  AOC1305Week4
//
//  Created by Brandon McGhee on 5/26/13.
//  Copyright (c) 2013 Brandon McGhee. All rights reserved.
//

#import "ViewController.h"

//Declaration of constants for this applications
#define BTN_DATE 0
#define BTN_LOGIN 1
#define BTN_INFO 2

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    
    //Week 3 AOC1305 - Brandon McGhee

    //Floats to capture the width and height of current device
    float deviceWidth           =   CGRectGetWidth([[UIScreen mainScreen] bounds]);
    float deviceHeight          =   CGRectGetHeight([[UIScreen mainScreen] bounds]);
    
    //Date variable, formatted into a string at the end to put in alert view
    NSDate *currentDate         =   [NSDate date];
    NSDateFormatter *formatDate =   [[NSDateFormatter alloc] init];
                                    [formatDate setDateStyle:(NSDateFormatterFullStyle)];
                                    [formatDate setTimeStyle:(NSDateFormatterFullStyle)];
    NSString *stringDate        =   [formatDate stringFromDate:(currentDate)];
    
    //UIAlertView for Date
    alertDate      =   [[UIAlertView alloc] initWithTitle:@"Date" message:stringDate delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    
    //UIAlertView for Error Messages
    alertError      =   [[UIAlertView alloc] initWithTitle:@"Error" message:@"You must input a user name" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    
    //Label for "Username:"
    labelName                   =   [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 10.0f, deviceWidth/2, 31.0f)];
    labelName.text              =   @"Username:";
    labelName.textColor         =   [UIColor blackColor];
    
    //Text Input for "Username:" label
    inputName                   =   [[UITextField alloc] initWithFrame:CGRectMake(90.0f, 10.0f, deviceWidth/1.5, 31.0f)];
                                    [inputName setBorderStyle:(UITextBorderStyleRoundedRect)];
    
    //String for User Name
    userName                    =   [[NSString alloc]init];
    
    //Login Button
    btnLogin                    =   [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btnLogin.frame              =   CGRectMake(deviceWidth/1.4, deviceHeight/10, 75.0f, 30.0f);
                                    [btnLogin setTitle:@"Login" forState:UIControlStateNormal];
    [btnLogin addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
    btnLogin.tag                =   BTN_LOGIN;
    
    //Label for "Please Enter Username"
    labelPEName                 =   [[UILabel alloc] initWithFrame:CGRectMake(0.0f, deviceHeight/5, deviceWidth, 75.0f)];
    labelPEName.backgroundColor =   [UIColor grayColor];
    labelPEName.textColor       =   [UIColor blueColor];
    labelPEName.text            =   @"Please Enter Username";
    labelPEName.textAlignment   =   NSTextAlignmentCenter;
    
    //Show Date Button
    btnDate                     =   [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btnDate.frame               =   CGRectMake(10.0f, deviceHeight/2, 100.0f, 50.0f);
                                    [btnDate setTitle:@"Show Date" forState:UIControlStateNormal];
                                    [btnDate addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
                                    btnDate.tag = BTN_DATE;
    
    //Info Button
    btnInfo                     =   [UIButton buttonWithType:UIButtonTypeInfoDark];
    btnInfo.frame               =   CGRectMake(10.0f, deviceHeight/1.6, 25.0f, 100.0f);
    [btnInfo addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
                                    btnInfo.tag = BTN_INFO;
    
    //"Created by" Label
    labelCredits                =   [[UILabel alloc] initWithFrame:CGRectMake(10.0f, deviceHeight/1.25, deviceWidth, 50.0f)];
    labelCredits.text           =   @"";
    labelCredits.numberOfLines  =   2;
    
    self.view.backgroundColor   =   [UIColor whiteColor];
    
    //Adding elements to the view to be displayed
    [self.view addSubview:labelName];
    [self.view addSubview:inputName];
    [self.view addSubview:btnLogin];
    [self.view addSubview:labelPEName];
    [self.view addSubview:btnDate];
    [self.view addSubview:btnInfo];
    [self.view addSubview:labelCredits];

    [super viewDidLoad];
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//Function the will show and format the date in an Alert Box when the "Show Date" button is clicked
- (void)onClick:(UIButton*)button
{
    switch (button.tag)
    {
        case 0:
    
            [alertDate show];
        
        break;
            
        case 1:
            //Assigning value of inputName.text into userName
            userName        =       [NSString stringWithFormat:@"User: %@ has been logged in", inputName.text];
            
            //Logic statement to check if userName has any input
            if (userName.length == 0)
            {
                [alertError show];
            }else if (userName.length != 0)
            {
                labelPEName.text = userName;
                NSLog(@"%@",userName);
                labelPEName.text = userName;
            }else{
                NSLog(@"Error, unable to determine if inputName has length");
            }
        
        break;
            
        case 2:
        
            labelCredits.text   =   @"This application was created by /nBrandon McGhee";
        
        break;

        default:
        break;
    }
}

@end
