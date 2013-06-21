//
//  ViewController.m
//  Calculator
//
//  Created by Brian Rogers on 6/19/13.
//  Copyright (c) 2013 Brian Rogers. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)numberPressed:(UIButton *)sender
{
    NSString *number = sender.currentTitle;
    if (self.isTyping)
    {
        self.calculatorDisplay.text = [self.calculatorDisplay.text stringByAppendingString:number];
    }
    else
    {
        self.calculatorDisplay.text = number;
        self.isTyping = true;
    }
}

- (IBAction)operationPressed:(UIButton *)sender
{
    // Store current number as first number
    self.first = [self.calculatorDisplay.text intValue];
    self.operation = [sender.currentTitle characterAtIndex:0];
    self.isTyping = false;
}

- (IBAction)equalsPressed:(UIButton *)sender
{
    double answer;
    self.second = [self.calculatorDisplay.text intValue];
    switch (self.operation)
    {
        case '+':
            answer = self.first + self.second;
            break;
        case '-':
            answer = self.first - self.second;
            break;
        case '/':
            // TODO: Watch for divide by zero
            answer = self.first / self.second;
            break;
        case '*':
            answer = self.first * self.second;
            break;
    }
    
    self.isTyping = false;
    self.calculatorDisplay.text = [NSString stringWithFormat:@"%f", answer];
}

@end
