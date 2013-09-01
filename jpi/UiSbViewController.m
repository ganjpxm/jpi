//
//  UiStoryboardViewController.m
//  Jpi
//
//  Created by lenben on 1/9/13.
//  Copyright (c) 2013 ganjp. All rights reserved.
//

#import "UiSbViewController.h"

@interface UiSbViewController ()

@end

@implementation UiSbViewController

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

- (IBAction)clickTableViewBtn:(id)sender {
    UIStoryboard *uiSb = self.storyboard;
    UIViewController *tableVc = [uiSb instantiateViewControllerWithIdentifier:@"table"];
    [self.navigationController pushViewController:tableVc animated:YES];
}

- (void)viewDidUnload {
    [self setBackBtn:nil];
    [super viewDidUnload];
}
@end
