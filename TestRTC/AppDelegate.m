//
//  AppDelegate.m
//  TestRTC
//
//  Created by Art on 12.06.2015.
//  Copyright (c) 2015 Polbyte. All rights reserved.
//

#import "AppDelegate.h"

#import "APPRTCViewController.h"
#import "RTCPeerConnectionFactory.h"

@interface AppDelegate () {
    UIWindow* _window;
}

@end

@implementation AppDelegate

#pragma mark - UIApplicationDelegate methods

- (BOOL)application:(UIApplication*)application
didFinishLaunchingWithOptions:(NSDictionary*)launchOptions {
    [RTCPeerConnectionFactory initializeSSL];
    _window =  [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    APPRTCViewController* viewController =
    [[APPRTCViewController alloc] initWithNibName:@"APPRTCViewController"
                                           bundle:nil];
    _window.rootViewController = viewController;
    [_window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication*)application {
    [[self appRTCViewController] applicationWillResignActive:application];
}

- (void)applicationWillTerminate:(UIApplication*)application {
    [RTCPeerConnectionFactory deinitializeSSL];
}

#pragma mark - Private

- (APPRTCViewController*)appRTCViewController {
    return (APPRTCViewController*)_window.rootViewController;
}

@end
