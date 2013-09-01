//
//  SampleViewController.h
//  Jpi
//
//  Created by lenben on 31/8/13.
//  Copyright (c) 2013 ganjp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SampleViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *storyboardUiBtn;
@property (weak, nonatomic) IBOutlet UIButton *xibUiBtn;
@property (weak, nonatomic) IBOutlet UIButton *codingUiBtn;

- (IBAction)clickStoryboardUiBtn:(id)sender;



@end
