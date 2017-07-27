//
//  MGStackLinkListImp.h
//  Study
//
//  Created by Mark Gage on 2017-07-27.
//  Copyright © 2017 Mark Gage. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MGStack.h"

@interface MGStackLinkListImp<T> : NSObject<MGStack>
- (void)push:(T)item;
- (T)popItem;
- (T)topItem;
@end
