//
//  NSMutableArray+Addition.h
//  Study
//
//  Created by Markus Gage on 2017-09-02.
//  Copyright © 2017 Mark Gage. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableArray (Addition)

- (instancetype)initWthSize:(NSUInteger)numItems;
- (instancetype)initWthSize:(NSUInteger)numItems with:(id)fillElement;

@end
