//
//  MGLinkedListDoubleTailImp.h
//  Study
//
//  Created by Mark Gage on 2017-07-27.
//  Copyright © 2017 Mark Gage. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MGLinkedList.h"

@interface MGLinkedListDoubleTailImp<T> : NSObject<MGLinkedList>
- (void)insertFront:(T)element;
- (void)insertBack:(T)element;
- (MGNode *)find:(T)element;
@end
