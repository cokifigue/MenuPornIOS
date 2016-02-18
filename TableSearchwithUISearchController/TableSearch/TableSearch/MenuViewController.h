//
//  MenuViewController.h
//  TableSearch
//
//  Created by Constanza Figuerola on 9/6/15.
//
//

#import <UIKit/UIKit.h>
#import "MPRestaurant.h"

@interface MenuViewController : UITableViewController <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, retain) MPRestaurant *restaurant;

@end
