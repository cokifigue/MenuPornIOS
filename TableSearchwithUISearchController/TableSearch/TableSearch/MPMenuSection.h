//
//  MPMenuSection.h
//  TableSearch
//
//  Created by Constanza Figuerola on 9/5/15.
//
//

#import <Foundation/Foundation.h>

@interface MPMenuSection : NSObject

@property (nonatomic, retain) NSString *name;
@property (nonatomic, retain) NSMutableArray *itemArray;

+ (MPMenuSection *)sectionWithName:(NSString *)name items:(NSMutableArray *)items;
+ (MPMenuSection *)sectionFromResponse:(id)response;

@end
