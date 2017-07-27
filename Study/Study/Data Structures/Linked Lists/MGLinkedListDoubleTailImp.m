//
//  MGLinkedListDoubleTailImp.m
//  Study
//
//  Created by Mark Gage on 2017-07-27.
//  Copyright © 2017 Mark Gage. All rights reserved.
//

#import "MGLinkedListDoubleTailImp.h"

@interface MGLinkedListDoubleTailImp ()
{
    NSInteger _counter;
}
@property (strong, nonatomic) MGNode *head;
@property (strong, nonatomic) MGNode *tail;
@end

@implementation MGLinkedListDoubleTailImp

- (void)insertFront:(id)element
{
    MGNode *node = [[MGNode alloc] init];
    [node setElement:element];
    
    _counter++;
}

- (void)insertBack:(id)element
{
    MGNode *node = [[MGNode alloc] init];
    [node setElement:element];
    
    _counter++;
}

- (void)removeFront
{
    
    _counter--;
}

- (void)removeBack
{
    
    _counter--;
}

- (MGNode *)getFirstElement
{
    if (!self.head) {
        @throw [NSException new];
    }
    return self.head;
}

- (MGNode *)getLastElement
{
    if (!self.head) {
        @throw [NSException new];
    }
    return self.tail;
}

- (MGNode *)find:(id)element
{
    if (!self.head) {
        @throw [NSException new];
    }
    
    MGNode *p = self.head;
    while (p) {
        if ([p.element isEqual:element]) {
            return p;
        }
        p = p.next;
    }
    return NULL;
}

- (NSInteger)size
{
    return _counter;
}

- (void)display
{
    NSMutableString *linkString = [[NSMutableString alloc] initWithString:@"Head->"];
    MGNode *p = self.head;
    while (p) {
        [linkString appendString:[NSString stringWithFormat:@"%@<->",p.element]];
        p = p.next;
    }
    NSLog(@"%@",linkString);
}

@end
