//
//  UILabelJp.m
//  UILabelJp* label = [[UILabelJp alloc] initWithFrame:self.view.bounds];
//  label.verticalAlignment = VerticalAlignmentTop;
//
//  Created by lenben on 30/8/13.
//  Copyright (c) 2013 ganjp. All rights reserved.
//

#import "UILabelJp.h"

@implementation UILabelJp

@synthesize verticalAlignment = _verticalAlignment;

-(id) initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        self.verticalAlignment = VerticalAlignmentMiddle;
    }
    
    return  self;
}

-(void) setVerticalAlignment:(VerticalAlignment)verticalAlignment
{
    _verticalAlignment = verticalAlignment;
    [self setNeedsDisplay];
}

-(CGRect) textRectForBounds:(CGRect)bounds limitedToNumberOfLines:(NSInteger)numberOfLines
{
    CGRect textRect = [super textRectForBounds:bounds limitedToNumberOfLines:numberOfLines];
    switch (self.verticalAlignment) {
        case VerticalAlignmentTop:
            textRect.origin.y = bounds.origin.y;
            break;
        case VerticalAlignmentBottom:
            textRect.origin.y = bounds.origin.y + bounds.size.height - textRect.size.height;
            break;
        case VerticalAlignmentMiddle:
            // Fall through.
        default:
            textRect.origin.y = bounds.origin.y + (bounds.size.height - textRect.size.height) / 2.0;
    }
    
    return  textRect;
}

-(void) drawTextInRect:(CGRect)rect
{
    CGRect realRect = [self textRectForBounds:rect limitedToNumberOfLines:self.numberOfLines];
    [super drawTextInRect:realRect];    
}

@end
