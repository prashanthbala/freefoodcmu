//
//  FoodEntry.m
//  Free Food CMU
//
//  Created by Prashanth Balasubramaniam on 10/28/13.
//  Copyright (c) 2013 Prashanth Balasubramaniam. All rights reserved.
//

#import "FoodEntry.h"

@implementation FoodEntry

- (instancetype)initWithFood:(NSString *)food location:(NSString *)location description:(NSString *)description
{
    if (self = [super init]) {
        [self setFood:food];
        [self setLocation:location];
        [self setDescription:description];
    }
    return self;
}

@end
