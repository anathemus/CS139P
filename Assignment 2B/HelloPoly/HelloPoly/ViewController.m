//
//  ViewController.m
//  HelloPoly
//
//  Created by Benjamin A Burgess on 1/17/16.
//  Copyright © 2016 Benjamin A Burgess. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIStepper *PolyStepper;
@property (weak, nonatomic) IBOutlet UILabel *NumSides;
@property (weak, nonatomic) IBOutlet UILabel *Shape;

@end

@implementation ViewController

double value;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)PolySender:(UIStepper *)sender {
    value = [sender value];
    
    [_NumSides setText:[NSString stringWithFormat:@"%d", (int)value]];
    [_Shape setText:[self name]];
}

- (NSString *)name {
    if (value < 3)
        return @"NotAPolygon";
    if (value < 4)
        return @"Triangle";
    if (value < 5)
        return @"Square";
    if (value < 6)
        return @"Pentagon";
    if (value < 7)
        return @"Hexagon";
    if (value < 8)
        return @"Heptagon";
    if (value < 9)
        return @"Octagon";
    if (value < 10)
        return @"Nonagon";
    if (value < 11)
        return @"Decagon";
    if (value < 12)
        return @"Hendecagon";
    else
        return @"Dodecagon";
}


@end
