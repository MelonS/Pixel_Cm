//
//  ViewController.h
//  PixelCM
//
//  Created by todd on 13. 7. 23..
//  Copyright (c) 2013년 todd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    IBOutlet UITextField *_standardCM;
    IBOutlet UITextField *_standardPIXEL;
    
    IBOutlet UITextField *_convertCM;
    
    IBOutlet UILabel     *_convertPIXEL;
    IBOutlet UILabel     *_convertPIXELhalf;
}

@property (nonatomic,retain) UITextField *_standardCM;
@property (nonatomic,retain) UITextField *_standardPIXEL;

@property (nonatomic,retain) UITextField *_convertCM;
@property (nonatomic,retain) UILabel  *_convertPIXEL;
@property (nonatomic,retain) UILabel  *_convertPIXELhalf;

-(IBAction)saveClick:(id)sender;
-(IBAction)okClick:(id)sender;


@end
