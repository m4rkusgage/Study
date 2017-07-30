//
//  MGTreeBSTImp.h
//  Study
//
//  Created by Mark Gage on 2017-07-28.
//  Copyright © 2017 Mark Gage. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MGTree.h"

@interface MGTreeBSTImp<T> : NSObject<MGTree>
- (void)insert:(T)item;
- (MGNode *)search:(T)item;
@end
