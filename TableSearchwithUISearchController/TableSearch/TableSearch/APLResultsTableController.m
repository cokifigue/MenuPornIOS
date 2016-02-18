/*
 Copyright (C) 2015 Apple Inc. All Rights Reserved.
 See LICENSE.txt for this sample’s licensing information
 
 Abstract:
 The table view controller responsible for displaying the filtered products as the user types in the search field.
 */

#import "APLResultsTableController.h"
#import "MPRestaurant.h"

@implementation APLResultsTableController

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.filteredRestaurants.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = (UITableViewCell *)[self.tableView dequeueReusableCellWithIdentifier:kCellIdentifier];
    
    MPRestaurant *restaurant = self.filteredRestaurants[indexPath.row];
    [self configureCell:cell forRestaurant:restaurant];
    
    return cell;
}

@end