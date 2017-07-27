//
//  MGLinkedList.h
//  Study
//
//  Created by Mark Gage on 2017-07-27.
//  Copyright © 2017 Mark Gage. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MGNode.h"

@protocol MGLinkedList <NSObject>
- (void)insertFront:(id)element;
- (void)insertBack:(id)element;
- (void)removeFront;
- (void)removeBack;
- (MGNode *)find:(id)element;
- (MGNode *)getFirstElement;
- (MGNode *)getLastElement;
- (NSInteger)size;
- (void)display;
@end
