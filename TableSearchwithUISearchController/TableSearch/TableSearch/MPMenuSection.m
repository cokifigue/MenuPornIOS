//
//  MPMenuSection.m
//  TableSearch
//
//  Created by Constanza Figuerola on 9/5/15.
//
//

#import "MPMenuSection.h"
#import "MPItem.h"

@implementation MPMenuSection

+ (MPMenuSection *)sectionWithName:(NSString *)name items:(NSMutableArray *)items {
    
    MPMenuSection *newSection = [[self alloc] init];
    newSection.name = name;
    newSection.itemArray = items;
    
    return newSection;
}

+ (MPMenuSection *)sectionFromResponse:(id)response {
    NSMutableArray *items = [[NSMutableArray alloc] init];
    for (id item in response[@"contents"]) {
        MPItem *itemObj = [MPItem itemFromResponse:item];
        [items addObject:itemObj];
    }
    
    return [MPMenuSection sectionWithName:response[@"subsection_name"] items:items];
}

@end
