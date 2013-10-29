//
//  MPBAppDelegate.m
//  Free Food CMU
//
//  Created by Prashanth Balasubramaniam on 10/27/13.
//  Copyright (c) 2013 Prashanth Balasubramaniam. All rights reserved.
//

#import "MPBAppDelegate.h"
#import <Parse/Parse.h>
#import "MPBParseService.h"
#import "FoodEntryViewController.h"
#import "FoodFormViewController.h"
#import "FoodTableViewController.h"

@implementation MPBAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
//    Pushing for the sake of pushing
    
    [Parse setApplicationId:@"7XoWL5jMebsXMe9Jaf9gpqsm0ooHdSt9YilHTEQb"
                  clientKey:@"lHba5oi6j781DYgXm2d3kyFXXgVvl3vFq4TtHwzh"];
    [PFAnalytics trackAppOpenedWithLaunchOptions:launchOptions];
    
    PFObject *new_entry = [PFObject objectWithClassName:@"foodEntry"];
    [new_entry setObject:@"TESTLOCATION" forKey:@"location"];
    [new_entry setObject:@"TESTFOOD" forKey:@"food"];
    [new_entry setObject:@"TESTDESCRIPTION" forKey:@"description"];
    
    [new_entry save];
    
    
    
    NSLog(@"---INIT!---");
    
    MPBParseService *parseServiceInstance = [[MPBParseService alloc] init];
    
    NSLog(@"-old entry-");
    [parseServiceInstance allFoodEntries];
    NSLog(@"----");
    
//    save an entry
 //   FoodEntry *newFE = [[FoodEntry alloc] initWithFood:@"pizza" location:@"gates 6" description:@"made by Rishabh test"];
    
//    CHECK THIS
    [parseServiceInstance uploadFoodEntry:newFE];
    
    NSLog(@"-new entry-");
    [parseServiceInstance allFoodEntries];
    NSLog(@"----");
    
    
    
    
    NSLog(@"-----------");
    
    
    // Override point for customization after application launch.
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
