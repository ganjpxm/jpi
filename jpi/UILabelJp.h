//
//  UILabelJp.h
//  UILabelJp* label = [[UILabelJp alloc] initWithFrame:self.view.bounds];
//  label.verticalAlignment = VerticalAlignmentTop;
//  
//
//  Created by lenben on 30/8/13.
//  Copyright (c) 2013 ganjp. All rights reserved.

#import <UIKit/UIKit.h>

typedef enum {
    VerticalAlignmentTop,
    VerticalAlignmentMiddle,
    VerticalAlignmentBottom,
} VerticalAlignment;

@interface UILabelJp : UILabel
{
    VerticalAlignment _verticalAlignment;
}

@property (nonatomic, assign) VerticalAlignment verticalAlignment;

@end
