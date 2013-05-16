//
//  ViewController.m
//  AOC1305Week2
//
//  Created by Brandon McGhee on 5/13/13.
//  Copyright (c) 2013 Brandon McGhee. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    UILabel *label1 = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 10.0f, 200.0f, 20.0f)];
    if (label1 != nil)
    {
        label1.text = @"This is my label text";
        label1.backgroundColor = [UIColor redColor];
        
    }
    [self.view addSubview:label1];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
