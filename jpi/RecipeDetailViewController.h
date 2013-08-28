//
//  RecipeDetailViewController.h
//  Jpi
//
//  Created by lenben on 26/8/13.
//  Copyright (c) 2013 ganjp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RecipeDetailViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *recipeNameLbl;
@property (strong, nonatomic) NSString *recipeName;

@end
