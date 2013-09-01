//
//  SampleViewController.m
//  Jpi
//
//  Created by lenben on 31/8/13.
//  Copyright (c) 2013 ganjp. All rights reserved.
//

#import "SampleViewController.h"

@interface SampleViewController ()

@end

@implementation SampleViewController

@synthesize storyboardUiBtn,xibUiBtn,codingUiBtn;

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

- (void)viewDidUnload {
    [self setStoryboardUiBtn:nil];
    [self setXibUiBtn:nil];
    [self setCodingUiBtn:nil];
    [super viewDidUnload];
}

- (IBAction)clickStoryboardUiBtn:(id)sender {
    UIStoryboard *uiSb = [UIStoryboard storyboardWithName:@"UiSb" bundle:nil];
    UIViewController *uiSbHomeVc = [uiSb instantiateViewControllerWithIdentifier:@"uiSbView"];
    [self.navigationController pushViewController:uiSbHomeVc animated:YES];
//    [self presentModalViewController:uiSbHomeVc animated:YES];
}
@end
