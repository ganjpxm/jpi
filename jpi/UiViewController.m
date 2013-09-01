//
//  UiViewController.m
//  Jpi
//
//  Created by lenben on 28/8/13.
//  Copyright (c) 2013 ganjp. All rights reserved.
//

#import "UiViewController.h"

@interface UiViewController ()

@end

@implementation UiViewController
@synthesize textView, textField, button;

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
    
    //Label
    UILabel* label = [[UILabel alloc] initWithFrame:self.view.bounds];
    label.text = @"This is a UILabel Demo,";
    label.font = [UIFont fontWithName:@"Arial" size:35];
    label.textColor = [UIColor yellowColor];
    label.textAlignment = UITextAlignmentCenter;
    label.backgroundColor = [UIColor blueColor];
    label.lineBreakMode = UILineBreakModeWordWrap;
    label.numberOfLines = 0;
    CGSize size = [label.text sizeWithFont:label.font constrainedToSize:self.view.bounds.size lineBreakMode:label.lineBreakMode];
    CGRect rect = label.frame;
    rect.size.height = size.height;
    label.frame = rect;
    [self.view addSubview:label];
    
}

- (void)viewDidUnload
{
    [self setTextField:nil];
    [self setButton:nil];
   
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
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

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)onClick:(id)sender
{
    //I will go to <place>  => I will go to Singapore
    self.textView.text = [self.textField.text
                            stringByReplacingOccurrencesOfString:@"<place>"
                            withString:@"Singapore"];

}

- (IBAction)hideKeyboard:(id)sender {
    [self.textField resignFirstResponder];
}



@end
