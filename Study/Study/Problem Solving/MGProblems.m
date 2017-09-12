//
//  MGProblems.m
//  Study
//
//  Created by Markus Gage on 2017-08-28.
//  Copyright © 2017 Mark Gage. All rights reserved.
//

#import "MGProblems.h"

@interface MGMeetingTime : NSObject
@property (assign, nonatomic) NSInteger startTime;
@property (assign, nonatomic) NSInteger endTime;
@end

@implementation MGMeetingTime

- (NSComparisonResult)compare:(MGMeetingTime *)object {
    if (self.startTime < object.startTime) return NSOrderedAscending;
    return NSOrderedDescending;
}

@end

@implementation MGProblems

+ (void)checkMeetingTimes {
    
    NSMutableOrderedSet<MGMeetingTime *> *timeSlots = [[NSMutableOrderedSet alloc] init];
    
    MGMeetingTime *mt = [[MGMeetingTime alloc] init];
    mt.startTime = 0;
    mt.endTime = 1;
    
    [timeSlots addObject:mt];
    
    mt = [[MGMeetingTime alloc] init];
    mt.startTime = 3;
    mt.endTime = 5;
    [timeSlots addObject:mt];
    
    mt = [[MGMeetingTime alloc] init];
    mt.startTime = 4;
    mt.endTime = 8;
    [timeSlots addObject:mt];
    
    mt = [[MGMeetingTime alloc] init];
    mt.startTime = 10;
    mt.endTime = 12;
    [timeSlots addObject:mt];
    
    mt = [[MGMeetingTime alloc] init];
    mt.startTime = 9;
    mt.endTime = 10;
    [timeSlots addObject:mt];
    
    NSArray<MGMeetingTime *> *arr = [timeSlots array];
    arr = [arr sortedArrayUsingSelector:@selector(compare:)];
    
    NSMutableArray *times = [[NSMutableArray alloc] init];
    [times addObject:arr[0]];
    
    for (int i = 1; i < [arr count]; i++) {
        MGMeetingTime *firstTime = [times lastObject];
        MGMeetingTime *secondTime = arr[i];
        
        if (firstTime.endTime >= secondTime.startTime) {
            firstTime.endTime = secondTime.endTime;
        } else {
            [times addObject:secondTime];
        }
    }
    
    
    
    NSMutableArray<NSNumber *> *testArray = [[NSMutableArray alloc] initWithArray:@[@1, @2, @3, @4, @5]];
    
    for (int i = 0; i < [testArray count]/2; i++) {
        NSNumber *temp = testArray[i];
        testArray[i] = testArray[[testArray count] - i - 1];
        testArray[[testArray count] - i - 1] = temp;
    }
    
    NSString *string = @"makus";
    NSInteger n = [string length];
    
    NSMutableArray *strArray = [[NSMutableArray alloc] init];
    for (int i = 0; i < [string length]; i++) {
        NSString *charString = [NSString stringWithFormat:@"%c",[string characterAtIndex:i]];
        [strArray addObject:charString];
    }
    
    for (int i = 0; i < n/2; i++) {
        id temp = strArray[i];
        strArray[i] = strArray[[strArray count] - i - 1];
        strArray[[strArray count] - i - 1] = temp;
    }
    
    NSString *stringly = [strArray componentsJoinedByString:@""];
    
    NSLog(@"ELLO");
}

- (NSInteger)findMaxDiffernce:(NSArray *)arr {
    if ([arr count] < 2) @throw [NSException new];
    
    int maxDiff = [arr[1] intValue] - [arr[0] intValue];
    int lowestNumber = MIN([arr[1] intValue], [arr[0] intValue]);
    
    for (int i = 2; i < [arr count]; i++) {
        lowestNumber = MIN(lowestNumber, [arr[i] intValue]);
        maxDiff = MAX(maxDiff, [arr[i] intValue] - lowestNumber);
    }
    return maxDiff;
}


@end
