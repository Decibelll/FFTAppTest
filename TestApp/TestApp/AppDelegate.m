//
//  AppDelegate.m
//  TestApp
//
//  Created by Sergii Nesteruk on 11/28/15.
//  Copyright © 2015 greenerpastures. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    NSLog(@"void: %lu", sizeof(void));
    NSLog(@"size_t: %lu", sizeof(size_t));
    NSLog(@"float: %lu", sizeof(float));
    NSLog(@"double: %lu", sizeof(double));
    NSLog(@"int: %lu", sizeof(int));
    NSLog(@"long: %lu", sizeof(long));
    NSLog(@"long long: %lu", sizeof(long long));
    NSLog(@"unsigned int: %lu", sizeof(unsigned int));
    NSLog(@"unsigned long: %lu", sizeof(unsigned long));
    NSLog(@"unsigned long long: %lu", sizeof(unsigned long long));
    /*
     #define SIZEOF_DOUBLE
     
     /* The size of `fftw_r2r_kind', as computed by sizeof. */
#define SIZEOF_FFTW_R2R_KIND
    
    /* The size of `MPI_Fint', as computed by sizeof. */
#define SIZEOF_MPI_FINT
    
    /* The size of `ptrdiff_t', as computed by sizeof. */
#define SIZEOF_PTRDIFF_T
    
    return YES;
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
