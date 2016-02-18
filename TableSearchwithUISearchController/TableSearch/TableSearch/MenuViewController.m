//
//  MenuViewController.m
//  TableSearch
//
//  Created by Constanza Figuerola on 9/6/15.
//
//

#import "MenuViewController.h"
#import "MPMenuSection.h"
#import "MPItem.h"
#import <SDWebImage/UIImageView+WebCache.h>
#import "AFHTTPRequestOperationManager.h"

@interface MenuViewController ()

@end

@implementation MenuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = self.restaurant.name;
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return self.restaurant.menu.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    MPMenuSection *menuSection = self.restaurant.menu[section];
    return menuSection.itemArray.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"itemCell" forIndexPath:indexPath];
    
    // Configure the cell...
    
    UILabel *lbl = (UILabel *)[cell viewWithTag:100];
    
    MPMenuSection *menuSection = self.restaurant.menu[indexPath.section];
    MPItem *item = menuSection.itemArray[indexPath.row];
    
    [lbl setText: item.name];
    lbl.backgroundColor = [UIColor whiteColor];
    
    UIImageView *foodImageview = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"placeholder.png"]];
    
    NSString *baseUri = [@"http://ancient-anchorage-8688.herokuapp.com/restaurant/" stringByAppendingString:self.restaurant.locuId];
    NSString *itemUri = [[baseUri stringByAppendingString:@"/item_id/"] stringByAppendingString:item.name];
    NSString *encodedUri = [itemUri stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    
    
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    [manager GET:encodedUri parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        
        NSString *imageURI = responseObject[@"image"];
        [foodImageview sd_setImageWithURL:[NSURL URLWithString:imageURI]];
        cell.backgroundView = foodImageview;
        
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Error: %@", error);
    }];
    
    
    
    cell.backgroundView = foodImageview;
    
    
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 150;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
