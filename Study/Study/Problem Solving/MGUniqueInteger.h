//
//  MGUniqueInteger.h
//  Study
//
//  Created by Markus Gage on 2017-08-23.
//  Copyright © 2017 Mark Gage. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MGUniqueInteger : NSObject

+ (NSInteger)findUnique:(NSArray *)listIDs;
+ (NSArray *)findTwoUnique:(NSArray *)listIDs;

@end
