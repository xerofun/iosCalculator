//
//  ViewController.h
//  Calculator
//
//  Created by Brian Rogers on 6/19/13.
//  Copyright (c) 2013 Brian Rogers. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *calculatorDisplay;
@property (nonatomic) int first;
@property (nonatomic) int second;
@property (nonatomic) char operation;
@property (nonatomic) BOOL isTyping;

- (IBAction)numberPressed:(UIButton *)sender;
- (IBAction)operationPressed:(UIButton *)sender;
- (IBAction)equalsPressed:(UIButton *)sender;

@end
