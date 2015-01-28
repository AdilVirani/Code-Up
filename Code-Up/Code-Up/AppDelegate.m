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

- (BOOL)application:(UIApplication *)application
            openURL:(NSURL *)url
  sourceApplication:(NSString *)sourceApplication
         annotation:(id)annotation {
    NSLog(@"Worked");

    
    if([url.host isEqual:@"oauth"]) {
        [OCTClient completeSignInWithCallbackURL:url];
        NSLog(@"Worked_1");
        return YES;
    } else {
        NSLog(@"Worked_2");

        return NO;
    }
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
