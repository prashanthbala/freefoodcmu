//
//  MPBParseService.h
//  Free Food CMU
//
//  Created by Rishabh Alaap Singh on 10/28/13.
//  Copyright (c) 2013 Prashanth Balasubramaniam. All rights reserved.
//

#import "FoodEntry.h"
#import <Foundation/Foundation.h>

@interface MPBParseService : NSObject

- (instancetype) init;
- (void) uploadFoodEntry:(FoodEntry *)foodentry;
- (void) allFoodEntries;


@end
