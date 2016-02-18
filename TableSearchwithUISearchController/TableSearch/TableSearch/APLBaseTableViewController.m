/*
 Copyright (C) 2015 Apple Inc. All Rights Reserved.
 See LICENSE.txt for this sample’s licensing information
 
 Abstract:
 Base or common view controller to share a common UITableViewCell prototype between subclasses.
 */

#import "APLBaseTableViewController.h"
#import "MPRestaurant.h"

NSString *const kCellIdentifier = @"cellID";
NSString *const kTableCellNibName = @"TableCell";

@implementation APLBaseTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // we use a nib which contains the cell's view and this class as the files owner
    [self.tableView registerNib:[UINib nibWithNibName:kTableCellNibName bundle:nil] forCellReuseIdentifier:kCellIdentifier];
}

- (void)configureCell:(UITableViewCell *)cell forRestaurant:(MPRestaurant *)restaurant {
    cell.textLabel.text = restaurant.name;

    cell.detailTextLabel.text = @"";
}

@end
