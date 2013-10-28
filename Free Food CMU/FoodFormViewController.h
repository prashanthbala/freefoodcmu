//
//  FoodFormViewController.h
//  Free Food CMU
//
//  Created by Wale Desalu on 10/28/13.
//  Copyright (c) 2013 Prashanth Balasubramaniam. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FoodFormViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITextField *foodEntry;
@property (strong, nonatomic) IBOutlet UITextField *locationEntry;
@property (strong, nonatomic) IBOutlet UITextView *descriptionEntry;

@end
