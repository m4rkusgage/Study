//
//  MGLinkedListSingleImp.m
//  Study
//
//  Created by Mark Gage on 2017-07-27.
//  Copyright © 2017 Mark Gage. All rights reserved.
//

#import "MGLinkedListSingleImp.h"

@interface MGLinkedListSingleImp ()
{
    NSInteger _counter;
}
@property (strong, nonatomic) MGNode *head;
@end

@implementation MGLinkedListSingleImp

- (void)insertFront:(id)element
{
    MGNode *node = [[MGNode alloc] init];
    [node setElement:element];
    [node setNext:self.head];
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
        
        while (p.next != NULL) {
            p = p.next;
        }
        p.next = node;
    }
    _counter++;
}

- (void)removeFront
{
    if (!self.head) {
        @throw [NSException new];
    }
    self.head = self.head.next;
    _counter--;
}

- (void)removeBack
{
    if (!self.head) {
        @throw NSGenericException;
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
