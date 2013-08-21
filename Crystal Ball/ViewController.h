//
//  ViewController.h
//  Crystal Ball
//
//  Created by Charlie Massry on 8/16/13.
//  Copyright (c) 2013 Charlie Massry. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
}

@property (strong, nonatomic) IBOutlet UILabel *predictionLabel;
@property (strong, nonatomic) NSArray *predictionArray;

- (void) makePrediction;

@end
