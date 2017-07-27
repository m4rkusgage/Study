//
//  MGTree.h
//  Study
//
//  Created by Mark Gage on 2017-07-27.
//  Copyright © 2017 Mark Gage. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MGNode.h"

@protocol MGTree <NSObject>
- (void)insert:(id)item;
- (MGNode *)search:(id)item;
- (void)preOrderDisplay;
- (void)inOrderDisplay;
- (void)postOrderDisplay;
- (void)display;
@end
