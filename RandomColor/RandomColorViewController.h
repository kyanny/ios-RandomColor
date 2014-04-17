//
//  RandomColorViewController.h
//  RandomColor
//
//  Created by Kensuke Nagae on 4/16/14.
//  Copyright (c) 2014 Kensuke Nagae. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RandomColorViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIView *subView;
@property (weak, nonatomic) IBOutlet UIButton *button;

- (IBAction)changeColor:(id)sender;
@end
