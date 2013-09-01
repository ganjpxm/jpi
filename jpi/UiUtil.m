//
//  UiUtil.m
//  Jpi
//
//  Created by lenben on 30/8/13.
//  Copyright (c) 2013 ganjp. All rights reserved.
//

#import "UiUtil.h"


@implementation UiUtil

//--------------------------------------------- Image -------------------------
//UIImage *image = [[UIImage imageNamed:@"whiteButton.png"] stretchableImageWithLeftCapWidth:12.0 topCapHeight:0.0];
//[self.button setBackgroundImage:image forState:UIControlStateNormal];


//--------------------------------------------- Button ---------------------------------
//CGRectMake(x, y, buttonWidth, buttonHeight)
+(UIView*) createButton:(CGRect*)rect leftImage:(UIImage*)img
{
    UIButton *aButton = [UIButton buttonWithType:UIButtonTypeCustom];
    aButton.frame     = *(rect);
    
    [aButton setImage:img forState:UIControlStateNormal];
    [aButton setTag:1];
    [aButton addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
    
    return aButton;
}



@end
