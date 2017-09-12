//
//  MGLinkedListSingleTailImp.m
//  Study
//
//  Created by Mark Gage on 2017-07-27.
//  Copyright © 2017 Mark Gage. All rights reserved.
//

#import "MGLinkedListSingleTailImp.h"

@interface MGLinkedListSingleTailImp ()
{
    NSInteger _counter;
}
@property (strong, nonatomic) MGNode *head;
@property (strong, nonatomic) MGNode *tail;
@end

@implementation MGLinkedListSingleTailImp

- (void)insertFront:(id)element
{
    MGNode *node = [[MGNode alloc] init];
    [node setElement:element];
    node.next = self.head;
    self.head = node;
    
    if (!self.tail) {
        self.tail = self.head;
    }
    _counter++;
}

- (void)insertBack:(id)element
{
    MGNode *node = [[MGNode alloc] init];
    [node setElement:element];
    
    if (!self.tail) {
        self.head = node;
        self.tail = node;
    } else {
        self.tail.next = node;
        self.tail = node;
    }
    _counter++;
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

- (void)removeFront
{
    if (!self.head) {
        @throw [NSException new];
    }
    
    self.head = self.head.next;
    if (!self.head) {
        self.tail = self.head;
    }
    _counter--;
}

- (void)removeBack
{
    if (!self.tail) {
        @throw [NSException new];
    }
    
    MGNode *p = self.head;
    while (p.next != self.tail) {
        p = p.next;
    }
    p.next = NULL;
    self.tail = p;
    _counter--;
}

- (MGNode *)find:(id)element
{
    if (!self.head) {
        @throw [NSException new];
    }
    MGNode *p = self.head;
    while (p.next) {
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
        [linkString appendString:[NSString stringWithFormat:@"%@->",p.element]];
        p = p.next;
    }
    NSLog(@"%@",linkString);
}

@end
