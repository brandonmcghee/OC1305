//
//  ViewController.h
//  AOC1305Week3
//
//  Created by Brandon McGhee on 5/18/13.
//  Copyright (c) 2013 Brandon McGhee. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
   
}

- (int)add: (NSInteger)first second:(NSInteger)second;
- (BOOL)valuesEqual:(NSInteger)first second:(NSInteger)second;
- (NSString*)Append:(NSString*)first second:(NSString*)second;
- (UIAlertView*)displayAlertWithString:(NSString*) theString;

@end
