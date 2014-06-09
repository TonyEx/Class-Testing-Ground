//
//  TEAViewController.m
//  Class Testing Ground
//
//  Created by Tony Angelo on 6/8/14.
//  Copyright (c) 2014 Tony Angelo. All rights reserved.
//

#import "TEAViewController.h"
#import "TEADog.h"


@interface TEAViewController ()

@end

@implementation TEAViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	NSString *myString = @"The NewFoundland dog breed has webbed feet which aids in its swimming prowess.";
	NSArray *wordsInSentence = [myString componentsSeparatedByString:@" "];
	NSMutableArray *capitalizedWords = [[NSMutableArray alloc] init];
	
	NSLog(@"%@", wordsInSentence);
	
	for(int i = 0; i < [wordsInSentence count]; i++)
	{
		NSString *uncaptalizedWord = [wordsInSentence objectAtIndex:i];
		NSString *capitalziedWord = [uncaptalizedWord capitalizedString];
		[capitalizedWords addObject:capitalziedWord];
	}
	
	NSLog(@"%@", capitalizedWords);
	
	for(NSString *word in wordsInSentence)
	{
		NSString *capitalizedWord = [word capitalizedString];
		[capitalizedWords addObject:capitalizedWord];
	}
	
	NSLog(@"%@", capitalizedWords);
	
	TEADog *dog = [[TEADog alloc] init];
	[dog setName:@"Sparky"];
	NSString *myDogName = [ dog name];
	NSLog(@"%@", myDogName);
	
	dog.name = @"Sparky is awesome";
	NSLog(@"%@", dog.name);
	
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
