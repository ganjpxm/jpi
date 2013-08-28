//
//  HomeSbViewController.m
//  Jpi
//
//  Created by lenben on 25/8/13.
//  Copyright (c) 2013 ganjp. All rights reserved.
//

#import "HomeSbViewController.h"

@interface HomeSbViewController ()

@end

@implementation HomeSbViewController

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)back:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)logout:(id)sender {
    [self performSegueWithIdentifier:@"homeToLogin" sender:self];
}
@end
