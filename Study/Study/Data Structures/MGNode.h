//
//  MGNode.h
//  Study
//
//  Created by Mark Gage on 2017-07-27.
//  Copyright © 2017 Mark Gage. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MGNode<T> : NSObject
@property (strong, nonatomic) T element;
@property (strong, nonatomic) MGNode<T> *prev;
@property (strong, nonatomic) MGNode<T> *next;
@end
