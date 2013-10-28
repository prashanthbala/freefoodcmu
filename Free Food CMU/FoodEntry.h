//
//  FoodEntry.h
//  Free Food CMU
//
//  Created by Prashanth Balasubramaniam on 10/28/13.
//  Copyright (c) 2013 Prashanth Balasubramaniam. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FoodEntry : NSObject

@property (nonatomic, strong) NSString *food;
@property (nonatomic, strong) NSString *location;
@property (nonatomic, strong) NSString *description;

- (instancetype)initWithFood:(NSString *)food location:(NSString *)location description:(NSString *)description;

@end
