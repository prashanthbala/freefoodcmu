//
//  MPBViewController.m
//  Free Food CMU
//
//  Created by Prashanth Balasubramaniam on 10/27/13.
//  Copyright (c) 2013 Prashanth Balasubramaniam. All rights reserved.
//

#import "MPBViewController.h"
#import <Parse/Parse.h>

@interface MPBViewController ()

@end

@implementation MPBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    PFObject *testObject = [PFObject objectWithClassName:@"TestObject"];
    [testObject setObject:@"bar" forKey:@"foo"];
    [testObject save];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
