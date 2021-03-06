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
    
    //String that will contain the list of elements from the story
    NSMutableString *listOfItems = [[NSMutableString alloc] initWithCapacity:5];
    
    //Loop that puts the elements from the storyElements array into the listOfItems string
    for (int i=0; i<[storyElements count]; i++)
    {
        //Checks to see the i variable is before the end so and can be put into the string
        if (i == 4)
        {
            [listOfItems appendString:@" and "];
            [listOfItems appendString:[storyElements objectAtIndex:i]];
        }else if (i == 0) //Checks to see if i is at the beginning so a comman will not be placed
        {
            [listOfItems appendString:[storyElements objectAtIndex:i]];
        }else
        {
            [listOfItems appendString:@", "];
            [listOfItems appendString:[storyElements objectAtIndex:i]];
        }
        
    }
    
    //Printing list to the console
    NSLog(@"%@", listOfItems);

    //Changing the background color of the view to a custom color
    self.view.backgroundColor = [UIColor colorWithRed:0.98 green:0.98 blue:0.824 alpha:1];
    
    //Initializing the label for bookTitle
    bookTitle = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 320.0f, 20.0f)];

    //Setting values, colors and alignment for the bookTitle label
    bookTitle.text = @"Lamb";
    bookTitle.backgroundColor = [UIColor darkGrayColor];
    bookTitle.textColor = [UIColor greenColor];
    bookTitle.textAlignment = NSTextAlignmentCenter;
    
    //Initializing the label for labelAuthor
    labelAuthor = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 25.0f, 100.0f, 20.0f)];
    
    //Setting values, colors and alignment for the labelAuthor label
    labelAuthor.text = @"Author:";
    labelAuthor.backgroundColor = [UIColor lightGrayColor];
    labelAuthor.textColor = [UIColor blueColor];
    labelAuthor.textAlignment = NSTextAlignmentRight;

    //Initializing the label for bookAuthor
    bookAuthor = [[UILabel alloc] initWithFrame:CGRectMake(100.0f, 25.0f, 280.0f, 20.0f)];
    
    //Setting values, colors and alignment for the bookAuthor label
    bookAuthor.text = @"Christopher Moore";
    bookAuthor.backgroundColor = [UIColor grayColor];
    bookAuthor.textColor = [UIColor yellowColor];
    bookAuthor.textAlignment = NSTextAlignmentLeft;

    //Initializing the label for labelPublished
    labelPublished = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 50.0f, 100.0f, 20.0f)];
    
    //Setting values, colors and alignment for the labelPublished label
    labelPublished.text = @"Published:";
    labelPublished.backgroundColor = [UIColor brownColor];
    labelPublished.textColor = [UIColor whiteColor];
    labelPublished.textAlignment = NSTextAlignmentLeft;

    //Initializing the label for bookPublished
    bookPublished = [[UILabel alloc] initWithFrame:CGRectMake(100.0f, 50.0f, 280.0f, 20.0f)];
    
    //Setting values, colors and alignment for the bookPublished label
    bookPublished.text = @"2002";
    bookPublished.textAlignment = NSTextAlignmentLeft;
    bookPublished.backgroundColor = [UIColor magentaColor];
    bookPublished.textColor = [UIColor cyanColor];
    
    //Initializing the label for labelSummary
    labelSummary = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 75.0f, 100.0f, 20.0f)];
    
    //Setting values, colors and alignment for the labelSummary label
    labelSummary.text = @"Summary:";
    labelSummary.backgroundColor = [UIColor purpleColor];
    labelSummary.textColor = [UIColor orangeColor];
    labelSummary.textAlignment = NSTextAlignmentLeft;
    
    //Initializing the label for bookSummary
    bookSummary = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 100.0f, 320.0f, 150.0f)];
    
    //Setting values, colors and alignment for the bookSummary label
    bookSummary.text = @"The adult life of Jesus Christ is always talked about.  However there is very little information on his childhood until he reaches 30.  That is where Christ's best pal Biff comes in.  Lamb is about the life of Jesus and Biff from the ages of 7 to 30.";
    bookSummary.numberOfLines = 7;
    bookSummary.backgroundColor = [UIColor redColor];
    bookSummary.textColor = [UIColor whiteColor];
    bookSummary.textAlignment = NSTextAlignmentCenter;
    
    //Initializing the label for labelListOfItems
    labelListOfItems = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 260.0f, 100.0f, 20.0f)];
    
    //Setting values, colors and alignment for the ListOfItems label
    labelListOfItems.text = @"List of Items:";
    labelListOfItems.textColor = [UIColor colorWithRed:1 green:0.757 blue:0.145 alpha:1];
    labelListOfItems.backgroundColor = [UIColor colorWithRed:0.275 green:0.51 blue:0.706 alpha:1];
    labelListOfItems.textAlignment = NSTextAlignmentLeft;
    
    //Initializing the label for bookListOfItems
    bookListOfItems = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 290.0f, 320.0f, 50.0f)];
    
    //Setting values, colors and alignment for the bookListOfItems label
    bookListOfItems.text = listOfItems;
    bookListOfItems.numberOfLines = 3;
    bookListOfItems.textAlignment = NSTextAlignmentCenter;
    bookListOfItems.backgroundColor = [UIColor colorWithRed:0.596 green:0.984 blue:0.596 alpha:1];
    bookListOfItems.textColor = [UIColor colorWithRed:0.365 green:0.278 blue:0.545 alpha:1];

    //Adding all the labels to the view so they will be displayed
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
