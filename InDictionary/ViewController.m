//
//  ViewController.m
//  InDictionary
//
//  Created by 荒井 達哉 on 12/02/09.
//  Copyright (c) 2012年 genesix, Inc. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

@synthesize button = _button;
@synthesize textField = _textField;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)dealloc
{
    self.button = nil;
    self.textField = nil;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
    self.button = nil;
    self.textField = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)search:(id)sender {
    NSString *str = self.textField.text;

    if ([UIReferenceLibraryViewController dictionaryHasDefinitionForTerm:str] == YES)
    {
        UIReferenceLibraryViewController *reference = [[[UIReferenceLibraryViewController alloc] initWithTerm:str] autorelease];
        
        [self presentModalViewController:reference animated:YES];
    }
}

@end
