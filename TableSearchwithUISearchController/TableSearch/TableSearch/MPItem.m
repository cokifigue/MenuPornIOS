//
//  MPItem.m
//  TableSearch
//
//  Created by Constanza Figuerola on 9/5/15.
//
//

#import "MPItem.h"

@implementation MPItem

+ (MPItem *)itemWithName:(NSString *)name price:(NSString *)price {
    
    MPItem *newItem = [[self alloc] init];
    newItem.name = name;
    newItem.price = price;
    
    return newItem;
}

+ (MPItem *)itemFromResponse:(id)response {
    return [MPItem itemWithName:response[@"name"] price:response[@"price"]];
}

@end
