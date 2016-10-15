//
//  AppDelegate.m
//  FirebaseDatabase
//
//  Created by Ali Karakoç on 14.10.2016.
//  Copyright © 2016 Ali Karakoç. All rights reserved.
//

#import "AppDelegate.h"
@import Firebase;

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [FIRApp configure];
    return YES;
}

@end
