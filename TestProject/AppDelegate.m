//
//  AppDelegate.m
//  TestProject
//
//  Created by Muqeem Ahmad on 08/12/17.
//  Copyright © 2017 Muqeem Ahmad. All rights reserved.
//

#import "AppDelegate.h"
#import <ZendeskSDK/ZendeskSDK.h>
#import "FirstViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

//chanes is done by me
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    
    [[ZDKConfig instance] initializeWithAppId:@"229aba9c872c67a6d9aa4ce17667b9ad06f85dad927ad890"
                                   zendeskUrl: @"https://millionhere.zendesk.com"
                                     clientId: @"mobile_sdk_client_5295707b67d82c948202"];
    
    ZDKAnonymousIdentity* identity=[ZDKAnonymousIdentity new];
    identity.name=@"Muqeem Ahmad";
    identity.email=@"ahmad@gmail.com";
    [ZDKConfig instance].userIdentity=identity;
    
    
    
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    FirstViewController *viewController = [[FirstViewController alloc] initWithNibName:@"FirstViewController" bundle:nil];
    self.navController=[[UINavigationController alloc]initWithRootViewController:viewController];
    self.window.rootViewController = self.navController;
    [self.window makeKeyAndVisible];
    
    
    
    
    
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
