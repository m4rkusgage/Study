//
//  MGStackLinkListImp.m
//  Study
//
//  Created by Mark Gage on 2017-07-27.
//  Copyright © 2017 Mark Gage. All rights reserved.
//

#import "MGStackLinkListImp.h"
#import "MGLinkedListSingleTailImp.h"

@interface MGStackLinkListImp ()
@property (strong, nonatomic) MGLinkedListSingleTailImp *stackLinkedList;
@end

@implementation MGStackLinkListImp

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.stackLinkedList = [[MGLinkedListSingleTailImp alloc] init];
    }
    return self;
}

- (void)push:(id)item
{
    [self.stackLinkedList insertFront:item];
}

- (id)popItem
{
    if (![self.stackLinkedList size]) {
        @throw [NSException new];
    }
    
    MGNode *node = [self.stackLinkedList getFirstElement];
    id element = node.element;
    [self.stackLinkedList removeFront];
    
    return element;
}

- (id)topItem
{
    if (![self.stackLinkedList size]) {
        @throw [NSException new];
    }
    
    MGNode *node = [self.stackLinkedList getFirstElement];
    id element = node.element;
    
    return element;
}

- (BOOL)isEmpty
{
    return ![self.stackLinkedList size];
}

- (NSInteger)size
{
    return [self.stackLinkedList size];
}

- (void)display
{
    [self.stackLinkedList display];
}

@end
