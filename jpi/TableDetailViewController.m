//
//  RecipeDetailViewController.m
//  Jpi
//
//  Created by ganjianping on 26/8/13.
//  Copyright (c) 2013 ganjp. All rights reserved.
//

#import "TableDetailViewController.h"

@interface TableDetailViewController ()

@end

@implementation TableDetailViewController

@synthesize languageName;
@synthesize languageNameLbl;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    languageNameLbl.text = @"Description";
    self.navigationItem.title = languageName;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
