//
//  MPRestaurant.h
//  TableSearch
//
//  Created by Constanza Figuerola on 9/5/15.
//
//

#import <Foundation/Foundation.h>

@interface MPRestaurant : NSObject

@property (nonatomic, retain) NSString *name;
@property (nonatomic, retain) NSString *locuId;
@property (nonatomic, retain) NSMutableArray *menu;

+ (MPRestaurant *)restaurantWithName:(NSString *)name LocuId:(NSString *)locuId;
- (void)setMenuFromResponse:(id)response;

@end
