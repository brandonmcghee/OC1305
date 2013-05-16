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
    bookTitle = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 320.0f, 20.0f)];

    bookTitle.text = @"Lamb";
    bookTitle.backgroundColor = [UIColor redColor];
    bookTitle.textColor = [UIColor whiteColor];
    bookTitle.textAlignment = UITextAlignmentCenter;
    
    labelAuthor = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 25.0f, 100.0f, 20.0f)];
    
    labelAuthor.text = @"Author:";
    labelAuthor.textAlignment = UITextAlignmentRight;
    labelAuthor.backgroundColor = [UIColor redColor];
    
    bookAuthor = [[UILabel alloc] initWithFrame:CGRectMake(100.0f, 25.0f, 280.0f, 20.0f)];
    
    bookAuthor.text = @"Christopher Moore";
    bookAuthor.backgroundColor = [UIColor blueColor];
    bookAuthor.textAlignment = UITextAlignmentLeft;
    bookAuthor.textColor = [UIColor whiteColor];
    
    labelPublished = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 50.0f, 100.0f, 20.0f)];
    
    labelPublished.text = @"Published:";
    labelPublished.textAlignment = UITextAlignmentLeft;
    labelPublished.backgroundColor = [UIColor redColor];
    
    bookPublished = [[UILabel alloc] initWithFrame:CGRectMake(100.0f, 50.0f, 280.0f, 20.0f)];
    
    bookPublished.text = @"2002";
    bookPublished.textAlignment = UITextAlignmentLeft;
    bookPublished.backgroundColor = [UIColor blueColor];
    bookPublished.textColor = [UIColor whiteColor];
    
    labelSummary = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 75.0f, 100.0f, 20.0f)];
    
    labelSummary.text = @"Summary:";
    labelSummary.backgroundColor = [UIColor redColor];
    
    bookSummary = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 100.0f, 320.0f, 150.0f)];
    
    bookSummary.text = @"The adult life of Jesus Christ is always talked about.  However there is very little information on his childhood until he reaches 30.  That is where Christ's best pal Biff comes in.  Lamb is about the life of Jesus and Biff from the ages of 7 to 30.";
    bookSummary.numberOfLines = 7;
    bookSummary.backgroundColor = [UIColor redColor];
    bookSummary.textColor = [UIColor whiteColor];
    bookSummary.textAlignment = UITextAlignmentCenter;
    
    labelListOfItems = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 260.0f, 100.0f, 20.0f)];
    
    labelListOfItems.text = @"List of Items:";
    labelListOfItems.backgroundColor = [UIColor redColor];
    
    bookListOfItems = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 290.0f, 320.0f, 20.0f)];
    
    //bookListOfItems.text = listOfItems;
    bookListOfItems.backgroundColor = [UIColor blueColor];
    bookListOfItems.textColor = [UIColor whiteColor];

    [self.view addSubview:bookTitle];
    [self.view addSubview:labelAuthor];
    [self.view addSubview:bookAuthor];
    [self.view addSubview:labelPublished];
    [self.view addSubview:bookPublished];
    [self.view addSubview:labelSummary];
    [self.view addSubview:bookSummary];
    [self.view addSubview:labelListOfItems];
    [self.view addSubview:bookListOfItems];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
