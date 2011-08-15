//
//  BMIViewController.m
//  BMI
//
//  Created by Diógenes Hermínio on 8/15/11.
//  Copyright 2011 IFPB. All rights reserved.
//

#import "BMIViewController.h"

@implementation BMIViewController

@synthesize height;
@synthesize weight;
@synthesize calculateLabel;

-(IBAction)calculate:(id)sender {
    float lheight = (float)[self.height.text floatValue];
    int lweight = [self.weight.text intValue];
    float bmi = lweight / (lheight * lheight);
    NSString *condition;
    if (bmi < 18.5) {
        condition = @"Underweight";
    }
    else if (bmi < 25.0) {
        condition = @"Normal";
    }
    else if (bmi < 30.0) {
        condition = @"Overweight";
    }
    else {
        condition = @"Obese";
    }
    NSString *output = [NSString stringWithFormat:@"%.02f \n %@", bmi, condition];
    self.calculateLabel.text = output;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}
*/

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
