//
//  JpViewController.m
//  jpi
//
//  Created by lenben on 6/7/13.
//  Copyright (c) 2013 ganjp. All rights reserved.
//

#import "FormViewController.h"

//extension: define private method or property
@interface FormViewController ()
{
    NSString *_userName;
    NSString *_password;
}
@end

@implementation FormViewController
@synthesize messageLbl,userNameTf,passwordTf,showBtn;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    //Button
    UIImage *whiteBtnImg = [[UIImage imageNamed:@"btn_white.png"] stretchableImageWithLeftCapWidth:12.0 topCapHeight:0.0];
	UIImage *blueBtnImg = [[UIImage imageNamed:@"btn_blue.png"] stretchableImageWithLeftCapWidth:12.0 topCapHeight:0.0];
    [self.showBtn setBackgroundImage:whiteBtnImg forState:UIControlStateNormal];
	[self.showBtn setBackgroundImage:blueBtnImg forState:UIControlStateHighlighted];
}

- (void)viewDidUnload {
    [self setUserNameTf:nil];
    [self setPasswordTf:nil];
    [self setMessageLbl:nil];
    [self setShowBtn:nil];
    [super viewDidUnload];
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

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//--------------------------------  Action ------------------------------------
- (IBAction)clickShowBtn:(id)sender {
    //TextField
    _userName = self.userNameTf.text;
    _password = self.passwordTf.text;
    if ([_userName length] == 0) {
        _userName = @"Gan Jianping";
    }
    
    //Lable
    NSString *message1 = [[NSString alloc] initWithFormat:@"Welecome, %@! Your password is %@ \n", _userName, _password];
    NSString *message2 = [@"Welcome <userName>!" stringByReplacingOccurrencesOfString:@"<userName>" withString:_userName];
    NSString *message = [message1 stringByAppendingString:message2];
    self.messageLbl.text = message;
    self.messageLbl.font = [UIFont fontWithName:@"Arial" size:12];
    self.messageLbl.textColor = [UIColor yellowColor];
    self.messageLbl.textAlignment = UITextAlignmentCenter;
    self.messageLbl.backgroundColor = [UIColor redColor];
    self.messageLbl.lineBreakMode = UILineBreakModeWordWrap;
    self.messageLbl.numberOfLines = 0;
    CGSize size = [self.messageLbl.text sizeWithFont:self.messageLbl.font constrainedToSize:self.view.bounds.size lineBreakMode:self.messageLbl.lineBreakMode];
    CGRect rect = self.messageLbl.frame;
    rect.size.height = size.height;
    self.messageLbl.frame = rect;

}

//-------------------------------- Delegate ----------------------------
//UITextFieldDelegate
-(BOOL) textFieldShouldReturn: (UITextField *) textField {
    [textField resignFirstResponder];
    return YES;
}

@end
