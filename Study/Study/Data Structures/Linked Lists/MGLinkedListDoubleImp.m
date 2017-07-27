//
//  MGLinkedListDoubleImp.m
//  Study
//
//  Created by Mark Gage on 2017-07-27.
//  Copyright © 2017 Mark Gage. All rights reserved.
//

#import "MGLinkedListDoubleImp.h"

@interface MGLinkedListDoubleImp ()
{
    NSInteger _counter;
}
@property (strong, nonatomic) MGNode *head;
@end

@implementation MGLinkedListDoubleImp

- (void)insertFront:(id)element
{
    MGNode *node = [[MGNode alloc] init];
    [node setElement:element];
    
    node.next = self.head;
    self.head.prev = node;
    self.head = node;
    
    _counter++;
}

- (void)insertBack:(id)element
{
    MGNode *node = [[MGNode alloc] init];
    [node setElement:element];
    
    if (!self.head) {
        self.head = node;
    } else {
        MGNode *p = self.head;
        while(p.next){
            p = p.next;
        }
        p.next = node;
        node.prev = p;
    }
    _counter++;
}

- (void)removeFront
{
    if (!self.head) {
        @throw [NSException new];
    }
    self.head = self.head.next;
    self.head.prev = NULL;
    _counter--;
}

- (void)removeBack
{
    if (!self.head) {
        @throw [NSException new];
    }
    
    if (!self.head.next) {
        self.head = NULL;
    } else {
        MGNode *p = self.head;
        while (p.next.next) {
            p = p.next;
        }
        p.next = NULL;
    }
    _counter--;
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
