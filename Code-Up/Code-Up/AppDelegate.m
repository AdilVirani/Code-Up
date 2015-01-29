//
//  AppDelegate.m
//  Code-Up
//
//  Created by Adil  Virani on 1/19/15.
//  Copyright (c) 2015 Adil  Virani. All rights reserved.
//

#import "AppDelegate.h"
#import <OctoKit/OCTClient.h>


@implementation AppDelegate

NSString * const GITHUB_CLIENT_ID = @"bfde0e23418620e0b91f";
NSString * const GITHUB_CLIENT_SECRET = @"2939c6f811704f47af23d0ec3b50ffdfac1e7912";


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [OCTClient setClientID:GITHUB_CLIENT_ID clientSecret:GITHUB_CLIENT_SECRET];
    
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    UIViewController *rootVC = [[UIStoryboard storyboardWithName:@"Main" bundle: nil] instantiateInitialViewController];
    [self.window setRootViewController:rootVC];
    [self.window makeKeyAndVisible];
    
    return YES;
}



- (BOOL)application:(UIApplication *)application openURL:(NSURL *)URL sourceApplication:(NSString *)sourceApplication annotation:(id)annotation {
    if ([URL.host isEqual:@"oauth"]) {
        [OCTClient completeSignInWithCallbackURL:URL];
        return YES;
    } else {
        return NO;
    }

     //For handling a callback URL like my-app://oauth
    return YES;
    }

- (void)applicationWillResignActive:(UIApplication *)application {

}

- (void)applicationDidEnterBackground:(UIApplication *)application {

}

- (void)applicationWillEnterForeground:(UIApplication *)application {

}

- (void)applicationDidBecomeActive:(UIApplication *)application {

}

- (void)applicationWillTerminate:(UIApplication *)application {

}

@end
