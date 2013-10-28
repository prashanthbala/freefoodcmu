//
//  MPBParseService.m
//  Free Food CMU
//
//  Created by Rishabh Alaap Singh on 10/28/13.
//  Copyright (c) 2013 Prashanth Balasubramaniam. All rights reserved.
//

#import "MPBParseService.h"
#import <Parse/Parse.h>

@implementation MPBParseService

- (instancetype) init {
    if (self = [super init]) {
    }
    
    return self;
}

-(void) sendFoodEntry:(FoodEntry *)foodentry {
    NSString *location = foodentry.location;
    NSString *food = foodentry.food;
    NSString *description = foodentry.description;
    
    PFObject *new_entry = [PFObject objectWithClassName:@"foodEntry"];
    [new_entry setObject:location forKey:@"location"];
    [new_entry setObject:food forKey:@"food"];
    [new_entry setObject:description forKey:@"description"];
    
    [new_entry save];
    
}

- (void) getAllFoodEntries {
    PFQuery *query = [PFQuery queryWithClassName:@"foodEntry"];

    [query findObjectsInBackgroundWithBlock:(NSArray *objects, NSError *error){
          if (!error){
            NSLog(@"YESSSSSS");
            return;
        }
        else {
            NSLog(@"ERRROR GETTING VALUES :( ");
            return;
        }
    
    }];
    
    
//    
//    [query findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
//        if (!error) {
//            NSLog(@"%s foodEntries found", objects.count);
//            return objects;
//        } else {
//            return NULL;
//        }
//        
//    }];
}

@end
