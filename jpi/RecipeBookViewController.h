//
//  RecipeBookViewController.h
//  Jpi
//
//  Created by lenben on 26/8/13.
//  Copyright (c) 2013 ganjp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RecipeBookViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) IBOutlet UITableView *recipeBookTv;

@end
