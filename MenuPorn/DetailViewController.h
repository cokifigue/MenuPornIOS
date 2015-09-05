//
//  DetailViewController.h
//  MenuPorn
//
//  Created by Constanza Figuerola on 9/5/15.
//  Copyright (c) 2015 Constanza Figuerola. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

