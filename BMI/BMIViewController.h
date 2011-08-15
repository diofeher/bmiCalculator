//
//  BMIViewController.h
//  BMI
//
//  Created by Diógenes Hermínio on 8/15/11.
//  Copyright 2011 IFPB. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BMIViewController : UIViewController

@property (nonatomic, retain) IBOutlet UITextField *weight;
@property (nonatomic, retain) IBOutlet UITextField *height;
@property (nonatomic, retain) IBOutlet UILabel *calculateLabel;

- (IBAction)calculate:(id)sender;

@end
