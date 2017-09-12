//
//  MGStack.h
//  Study
//
//  Created by Mark Gage on 2017-07-27.
//  Copyright © 2017 Mark Gage. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol MGStack <NSObject>
- (void)push:(id)item;
- (id)popItem;
- (id)topItem;
- (BOOL)isEmpty;
- (NSInteger)size;
- (void)display;
@end
