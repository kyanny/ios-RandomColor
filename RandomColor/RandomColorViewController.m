//
//  RandomColorViewController.m
//  RandomColor
//
//  Created by Kensuke Nagae on 4/16/14.
//  Copyright (c) 2014 Kensuke Nagae. All rights reserved.
//

#import "RandomColorViewController.h"

@interface RandomColorViewController ()

@end

@implementation RandomColorViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setRandomColor];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)changeColor:(id)sender {
    [self setRandomColor];
}

- (void) setRandomColor {
    srand48(time(0));

    double red = drand48();
    double green = drand48();
    double blue = drand48();

    self.subView.backgroundColor = [[UIColor alloc] initWithRed:red green:green blue:blue alpha:1.0];
    self.rgb.text = [NSString stringWithFormat:@"rgb(%f,%f,%f)", red, green, blue];
}
@end
