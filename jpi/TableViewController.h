//
//  TableViewController.h
//  Jpi
//
//  Created by ganjianping on 26/8/13.
//  Copyright (c) 2013 ganjp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
{
    NSArray *_languages;
}
@property (strong, nonatomic) IBOutlet UITableView *languageTv;

@end
