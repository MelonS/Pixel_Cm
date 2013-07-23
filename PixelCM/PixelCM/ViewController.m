//
//  ViewController.m
//  PixelCM
//
//  Created by todd on 13. 7. 23..
//  Copyright (c) 2013년 todd. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

#define STANDARD_KEY1 @"std_value_key1"
#define STANDARD_KEY2 @"std_value_key2"

@synthesize _standardCM;
@synthesize _standardPIXEL;
@synthesize _convertCM;
@synthesize _convertPIXEL;
@synthesize _convertPIXELhalf;

-(void)dealloc {
    [_standardCM release];
    [_standardPIXEL release];
    
    [_convertCM release];
    [_convertPIXEL release];
    [_convertPIXELhalf release];
    
    [super dealloc];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSUserDefaults *nsuser = [NSUserDefaults standardUserDefaults];
    
    NSString *key1Value = [nsuser stringForKey:STANDARD_KEY1];
    NSString *key2Value = [nsuser stringForKey:STANDARD_KEY2];
    
    [_standardCM setText:key1Value];
    [_standardPIXEL setText:key2Value];
}

-(IBAction)saveClick:(id)sender {
    float stCM = [_standardCM.text floatValue];
    float stPX = [_standardPIXEL.text floatValue];
    
    if (stCM == 0.0f || stPX == 0.0f) return;
    
    NSUserDefaults *nsuser = [NSUserDefaults standardUserDefaults];
    
    [nsuser setValue:[NSString stringWithFormat:@"%.2f",stCM] forKey:STANDARD_KEY1];
    [nsuser setValue:[NSString stringWithFormat:@"%.2f",stPX] forKey:STANDARD_KEY2];
    
    [nsuser synchronize];
}

-(IBAction)okClick:(id)sender {
    float stCM = [_standardCM.text floatValue];
    float stPX = [_standardPIXEL.text floatValue];
    
    float covCM = [_convertCM.text floatValue];
    
    float okValue = (stPX * covCM) / stCM;
    float okValueHalf = okValue / 2.0f;
    
    [_convertPIXEL setText:[NSString stringWithFormat:@"%.2f",okValue]];
    [_convertPIXELhalf setText:[NSString stringWithFormat:@"%.2f",okValueHalf]];
}

@end
