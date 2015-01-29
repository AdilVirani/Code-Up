//
//  ViewController.m
//  Code-Up
//
//  Created by Adil  Virani on 1/19/15.
//  Copyright (c) 2015 Adil  Virani. All rights reserved.
//

#import "ViewController.h"
#import <ReactiveCocoa/ReactiveCocoa.h>


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.signInButton.layer.cornerRadius = 5;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)signInButtonWasHit:(id)sender {
    [[OCTClient signInToServerUsingWebBrowser:OCTServer.dotComServer scopes:OCTClientAuthorizationScopesUser]
     subscribeNext:^(OCTClient *authenticatedClient) {
         if(authenticatedClient){ [self performSegueWithIdentifier: @"main" sender: self];} else {NSLog(@"client is null");}
         // Authentication was successful. Do something with the created client.
     } error:^(NSError *error) {
         // Authentication failed.
         NSLog([NSString stringWithFormat:@"error: %@", [error description]]);
     }];
}


@end
