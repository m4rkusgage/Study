//
//  MGTreeBSTImp.m
//  Study
//
//  Created by Mark Gage on 2017-07-28.
//  Copyright © 2017 Mark Gage. All rights reserved.
//

#import "MGTreeBSTImp.h"

@interface MGTreeBSTImp ()
@property (strong, nonatomic) MGNode *root;
@end

@implementation MGTreeBSTImp

- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}

- (void)insert:(id)item
{
    self.root = [self insertNode:self.root withData:item];
}

- (MGNode *)insertNode:(MGNode *)root withData:(id)item
{
    if (!root) {
        MGNode *node = [[MGNode alloc] init];
        [node setElement:item];
        root = node;
    } else if (root.element > item) {
        root.prev = [self insertNode:root.prev withData:item];
    } else if (root.element < item) {
        root.next = [self insertNode:root.next withData:item];
    }
    return root;
}
@end
