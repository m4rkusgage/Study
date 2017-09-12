//
//  MGMakeChangeProblem.h
//  Study
//
//  Created by Markus Gage on 2017-08-25.
//  Copyright © 2017 Mark Gage. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MGMakeChangeProblem : NSObject
+ (NSInteger)makeChange:(NSInteger)money with:(NSArray *)coins;
+ (NSInteger)makeChange2:(NSInteger)money with:(NSArray *)coins;
+ (NSInteger)getMinChange:(NSInteger)money with:(NSArray *)coins;
@end
