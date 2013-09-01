//
//  UiViewController.h
//  Jpi
//
//  Created by lenben on 28/8/13.
//  Copyright (c) 2013 ganjp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UiViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextView *textView;
@property (strong, nonatomic) IBOutlet UITextField *textField;
@property (strong, nonatomic) IBOutlet UIButton *button;

- (IBAction)onClick:(id)sender;
- (IBAction)hideKeyboard:(id)sender;


@end
