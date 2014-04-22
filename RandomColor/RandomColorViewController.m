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
//    NSArray *colors = [self getRandomRGB];
    NSDictionary *colors = [self getRandomRGB];
//    self.subView.backgroundColor = [[UIColor alloc] initWithRed:[[colors objectAtIndex:0] doubleValue] green:[[colors objectAtIndex:1] doubleValue] blue:[[colors objectAtIndex:2] doubleValue] alpha:1.0];
    self.subView.backgroundColor = [[UIColor alloc] initWithRed:[[colors objectForKey:@"red"] doubleValue] green:[[colors objectForKey:@"green"] doubleValue] blue:[[colors objectForKey:@"blue"] doubleValue] alpha:1.0];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)changeColor:(id)sender {
//    NSArray *colors = [self getRandomRGB];
    NSDictionary *colors = [self getRandomRGB];
    self.subView.backgroundColor = [[UIColor alloc] initWithRed:[[colors objectForKey:@"red"] doubleValue] green:[[colors objectForKey:@"green"] doubleValue] blue:[[colors objectForKey:@"blue"] doubleValue] alpha:1.0];
//    self.subView.backgroundColor = [[UIColor alloc] initWithRed:[[colors objectAtIndex:0] doubleValue] green:[[colors objectAtIndex:1] doubleValue] blue:[[colors objectAtIndex:2] doubleValue] alpha:1.0];
    NSString *rgb = [NSString stringWithFormat:@"rgb(%d,%d,%d)", [[colors objectForKey:@"red"] intValue], [[colors objectForKey:@"green"] intValue], [[colors objectForKey:@"blue"] intValue]];
    self.rgb.text = rgb;
}

- (NSDictionary *) getRandomRGB {
    srand48(time(0));
    NSNumber *red   = [[NSNumber alloc] initWithDouble:drand48()];
    NSNumber *green = [[NSNumber alloc] initWithDouble:drand48()];
    NSNumber *blue  = [[NSNumber alloc] initWithDouble:drand48()];
    NSDictionary *rgb = [[NSDictionary alloc] initWithObjectsAndKeys:red,@"red",green,@"green",blue,@"blue", nil];
//    NSArray *rgb = [[NSArray alloc] initWithObjects:[NSNumber numberWithDouble:drand48()], [NSNumber numberWithDouble:drand48()], [NSNumber numberWithDouble:drand48()], nil];
    return rgb;
}
@end
