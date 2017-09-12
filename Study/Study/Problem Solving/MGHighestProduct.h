//
//  MGHighestProduct.h
//  Study
//
//  Created by Markus Gage on 2017-08-23.
//  Copyright © 2017 Mark Gage. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MGHighestProduct : NSObject

+ (NSInteger)highestProductOfThreeNaive:(NSArray *)listNumbers;
+ (NSInteger)highestProductOfThree:(NSArray *)listNumbers;
+ (NSInteger)highestProductFrom:(NSArray *)listNumbers for:(NSInteger)kItems;

@end
