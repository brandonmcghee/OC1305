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
    
    //Week 2 Project AOC1305
    //Book is "Lamb" by Christopher Moore
    
    //Array that holds the elements of the story.
    NSArray *storyElements = [[NSArray alloc] initWithObjects:@"wise men", @"journey",@"stupid angel", @"biff", @"joshua", nil];
    
    NSMutableString *listOfItems = [[NSMutableString alloc] initWithCapacity:5];
    
    for (int i=0; i<[storyElements count]; i++)
    {
        if (i == 4)
        {
            [listOfItems appendString:@" and "];
            [listOfItems appendString:[storyElements objectAtIndex:i]];
        }else if (i == 0)
        {
            [listOfItems appendString:[storyElements objectAtIndex:i]];
        }else
        {
            [listOfItems appendString:@","];
            [listOfItems appendString:[storyElements objectAtIndex:i]];
        }
        
    }
    
    NSLog(@"%@", listOfItems);
    
    self.view.backgroundColor = [UIColor colorWithRed:0.98 green:0.98 blue:0.824 alpha:1];
    
    bookTitle = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 320.0f, 20.0f)];

    bookTitle.text = @"Lamb";
    bookTitle.backgroundColor = [UIColor darkGrayColor];
    bookTitle.textColor = [UIColor greenColor];
    bookTitle.textAlignment = UITextAlignmentCenter;
    
    labelAuthor = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 25.0f, 100.0f, 20.0f)];
    
    labelAuthor.text = @"Author:";
    labelAuthor.backgroundColor = [UIColor lightGrayColor];
    labelAuthor.textColor = [UIColor blueColor];
    labelAuthor.textAlignment = UITextAlignmentRight;

    
    bookAuthor = [[UILabel alloc] initWithFrame:CGRectMake(100.0f, 25.0f, 280.0f, 20.0f)];
    
    bookAuthor.text = @"Christopher Moore";
    bookAuthor.backgroundColor = [UIColor grayColor];
    bookAuthor.textColor = [UIColor yellowColor];
    bookAuthor.textAlignment = UITextAlignmentLeft;

    
    labelPublished = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 50.0f, 100.0f, 20.0f)];
    
    labelPublished.text = @"Published:";
    labelPublished.backgroundColor = [UIColor brownColor];
    labelPublished.textColor = [UIColor whiteColor];
    labelPublished.textAlignment = UITextAlignmentLeft;

    
    bookPublished = [[UILabel alloc] initWithFrame:CGRectMake(100.0f, 50.0f, 280.0f, 20.0f)];
    
    bookPublished.text = @"2002";
    bookPublished.textAlignment = UITextAlignmentLeft;
    bookPublished.backgroundColor = [UIColor magentaColor];
    bookPublished.textColor = [UIColor cyanColor];
    
    labelSummary = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 75.0f, 100.0f, 20.0f)];
    
    labelSummary.text = @"Summary:";
    labelSummary.backgroundColor = [UIColor purpleColor];
    labelSummary.textColor = [UIColor orangeColor];
    labelSummary.textAlignment = UITextAlignmentLeft;
    
    bookSummary = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 100.0f, 320.0f, 150.0f)];
    
    bookSummary.text = @"The adult life of Jesus Christ is always talked about.  However there is very little information on his childhood until he reaches 30.  That is where Christ's best pal Biff comes in.  Lamb is about the life of Jesus and Biff from the ages of 7 to 30.";
    bookSummary.numberOfLines = 7;
    bookSummary.backgroundColor = [UIColor redColor];
    bookSummary.textColor = [UIColor whiteColor];
    bookSummary.textAlignment = UITextAlignmentCenter;
    
    labelListOfItems = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 260.0f, 100.0f, 20.0f)];
    
    labelListOfItems.text = @"List of Items:";
    labelListOfItems.textColor = [UIColor colorWithRed:1 green:0.757 blue:0.145 alpha:1];
    labelListOfItems.backgroundColor = [UIColor colorWithRed:0.275 green:0.51 blue:0.706 alpha:1];
    labelListOfItems.textAlignment = UITextAlignmentLeft;
    
    bookListOfItems = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 290.0f, 320.0f, 50.0f)];
    
    bookListOfItems.text = listOfItems;
    bookListOfItems.numberOfLines = 3;
    bookListOfItems.textAlignment = UITextAlignmentCenter;
    bookListOfItems.backgroundColor = [UIColor colorWithRed:0.596 green:0.984 blue:0.596 alpha:1];
    bookListOfItems.textColor = [UIColor colorWithRed:0.365 green:0.278 blue:0.545 alpha:1];

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
