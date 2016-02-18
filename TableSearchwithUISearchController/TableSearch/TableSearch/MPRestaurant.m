//
//  MPRestaurant.m
//  TableSearch
//
//  Created by Constanza Figuerola on 9/5/15.
//
//

#import "MPRestaurant.h"
#import "MPMenuSection.h"

@implementation MPRestaurant

+ (MPRestaurant *)restaurantWithName:(NSString *)name LocuId:(NSString *)locuId {
    
    MPRestaurant *newRestaurant = [[self alloc] init];
    newRestaurant.name = name;
    newRestaurant.locuId = locuId;
    
    return newRestaurant;
}

- (void)setMenuFromResponse:(id)response {
    NSMutableArray *sectionList = [[NSMutableArray alloc] init];
    
    for (id section in response[@"sections"]) {
        MPMenuSection *menuSection = [MPMenuSection sectionFromResponse:section];
        [sectionList addObject:menuSection];
    }
    
    self.menu = sectionList;
}

@end
