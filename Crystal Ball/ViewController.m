//
//  ViewController.m
//  Crystal Ball
//
//  Created by Charlie Massry on 8/16/13.
//  Copyright (c) 2013 Charlie Massry. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize predictionLabel;
@synthesize predictionArray;

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIImage *image = [UIImage imageNamed:@"crystalball.png"];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
    [self.view insertSubview:imageView atIndex:0];
	// Do any additional setup after loading the view, typically from a nib.
    self.predictionArray =[[NSArray alloc] initWithObjects:@"It is certain", @"It is decidedly so", @"All signs say YES", @"The stars are not aligned", @"My reply is no", @"It is doubtful", @"Better not tell you now", @"Concentrate and ask again", @"Unable to answer now", nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) makePrediction {
    NSUInteger index = arc4random_uniform(self.predictionArray.count);
    self.predictionLabel.text = [self.predictionArray objectAtIndex:index];
}

-(BOOL) canBecomeFirstResponder {
    return YES;
};
- (void) motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    self.predictionLabel.text = @"";
};
- (void) motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    if ( motion == UIEventSubtypeMotionShake ) {
        [self makePrediction];
    };
};
- (void) motionCancelled:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    NSLog(@"motion cancelled");
};
- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    self.predictionLabel.text = @"";
};
- (void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    [self makePrediction];
};
@end
