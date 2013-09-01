//
//  TableViewController.h
//  Jpi
//
//  Created by ganjianping on 26/8/13.
//  Copyright (c) 2013 ganjp. All rights reserved.
//

#import "TableViewController.h"
#import "TableDetailViewController.h"

@interface TableViewController ()

@end

@implementation TableViewController

@synthesize languageTv;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    _languages = [NSArray arrayWithObjects:@"Object C", @"C", @"C++", @"Java", @"Javascript", @"Html", @"CSS", nil];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

//-------------------------------- TableView ------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_languages count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellId = @"languageCell";
    
    UITableViewCell *tableViewCell = [tableView dequeueReusableCellWithIdentifier:cellId];
    
    if (tableViewCell == nil) {
        tableViewCell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellId];
    }
    
    tableViewCell.textLabel.text = [_languages objectAtIndex:indexPath.row];
    return tableViewCell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"showLanguageDetail"]) {
        NSIndexPath *indexPath = [self.languageTv indexPathForSelectedRow];
        TableDetailViewController *destViewController = segue.destinationViewController;
        destViewController.languageName = [_languages objectAtIndex:indexPath.row];
    }
}

@end
