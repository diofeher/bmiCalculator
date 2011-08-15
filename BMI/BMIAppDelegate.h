//
//  BMIAppDelegate.h
//  BMI
//
//  Created by Diógenes Hermínio on 8/15/11.
//  Copyright 2011 IFPB. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BMIViewController;

@interface BMIAppDelegate : NSObject <UIApplicationDelegate>

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet BMIViewController *viewController;

@end
