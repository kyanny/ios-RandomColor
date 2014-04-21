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
	// Do any additional setup after loading the view, typically from a nib.
    NSArray *colors = [self getRandomRGB];
    self.subView.backgroundColor = [[UIColor alloc] initWithRed:[[colors objectAtIndex:0] doubleValue] green:[[colors objectAtIndex:1] doubleValue] blue:[[colors objectAtIndex:2] doubleValue] alpha:1.0];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)changeColor:(id)sender {
    NSArray *colors = [self getRandomRGB];
    self.subView.backgroundColor = [[UIColor alloc] initWithRed:[[colors objectAtIndex:0] doubleValue] green:[[colors objectAtIndex:1] doubleValue] blue:[[colors objectAtIndex:2] doubleValue] alpha:1.0];
    NSString *rgb = [NSString stringWithFormat:@"rgb(%d,%d,%d)", [[colors objectAtIndex:0] intValue], [[colors objectAtIndex:1] intValue], [[colors objectAtIndex:2] intValue]];
    self.rgb.text = rgb;
}

- (NSArray *) getRandomRGB {
    srand48(time(0));
    NSArray *rgb = [[NSArray alloc] initWithObjects:[NSNumber numberWithDouble:drand48()], [NSNumber numberWithDouble:drand48()], [NSNumber numberWithDouble:drand48()], nil];
    return rgb;
}
@end
