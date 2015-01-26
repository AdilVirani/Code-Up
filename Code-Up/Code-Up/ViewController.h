//
//  ViewController.h
//  Code-Up
//
//  Created by Adil  Virani on 1/19/15.
//  Copyright (c) 2015 Adil  Virani. All rights reserved.
//

#import <UIKit/UIKit.h>
//#import <QuartzCore/QuartzCore.h>
#import <OctoKit/OCTClient.h>
#import <OctoKit/OCTServer.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *signInButton;
    

- (IBAction)signInButtonWasHit:(id)sender;

@end

