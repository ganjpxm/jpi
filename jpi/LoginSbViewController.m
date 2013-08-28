//
//  JpViewController.m
//  jpi
//
//  Created by lenben on 6/7/13.
//  Copyright (c) 2013 ganjp. All rights reserved.
//

#import "LoginSbViewController.h"

//extension: define private method or property
@interface LoginSbViewController ()
@property (weak, nonatomic) IBOutlet UITextField *userNameTf;
@property (weak, nonatomic) IBOutlet UITextField *passwordTf;
@property (weak, nonatomic) IBOutlet UILabel *messageLbl;

- (IBAction)login:(id)sender;

@end

@implementation LoginSbViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)login:(id)sender {
    self.userName = self.userNameTf.text;
    self.password = self.passwordTf.text;
    
    NSString *name = self.userName;
    if ([name length] == 0) {
        name = @"Anonym";
    }
    NSString *loginMessage = [[NSString alloc] initWithFormat:@"Welecome, %@! Your password is %@", name, self.password];
    self.messageLbl.text = loginMessage;
}

-(BOOL) textFieldShouldReturn: (UITextField *) textField {
    if (textField == self.passwordTf) {
        [textField resignFirstResponder];
    }
    return YES;
}
@end
