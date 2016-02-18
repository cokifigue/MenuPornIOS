/*
 Copyright (C) 2015 Apple Inc. All Rights Reserved.
 See LICENSE.txt for this sample’s licensing information
 
 Abstract:
 Base or common view controller to share a common UITableViewCell prototype between subclasses.
 */

@import UIKit;

@class MPRestaurant;

extern NSString *const kCellIdentifier;

@interface APLBaseTableViewController : UITableViewController

- (void)configureCell:(UITableViewCell *)cell forRestaurant:(MPRestaurant *)restaurant;

@end
