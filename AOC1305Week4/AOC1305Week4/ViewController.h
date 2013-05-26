//
//  ViewController.h
//  AOC1305Week4
//
//  Created by Brandon McGhee on 5/26/13.
//  Copyright (c) 2013 Brandon McGhee. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    //Global declaration for UI Labels
    UILabel *labelName;
    UILabel *labelPEName;
    UILabel *labelCredits;
    
    //Global declaration for UI Text Field Input
    UITextField *inputName;
    
    //Global declaration for UI Buttons
    UIButton *btnLogin;
    UIButton *btnDate;
    UIButton *btnInfo;
    
    //UI Alert Views
    UIAlertView *alertDate;
    UIAlertView *alertError;

    //String for User Input for Name
    NSString *userName;
    
    BOOL infoOn;

}

@end
