//
//  MPItem.h
//  TableSearch
//
//  Created by Constanza Figuerola on 9/5/15.
//
//

#import <Foundation/Foundation.h>

@interface MPItem : NSObject

@property (nonatomic, retain) NSString *name;
@property (nonatomic, retain) NSString *price;

+ (MPItem *)itemWithName:(NSString *)name price:(NSString *)price;
+ (MPItem *)itemFromResponse:(id)response;

@end
