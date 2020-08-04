//
//  AppDelegate.m
//  PropertiesTest
//
//  Created by Dmitry Aksyonov on 20.02.2020.
//  Copyright © 2020 Dmitry Aksyonov. All rights reserved.
//

#import "AppDelegate.h"
#import "Boxer.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    Boxer* boxer = [[Boxer alloc] init];
    
    // setting values for properties
//    boxer.name = @"Vasiliy";
//    boxer.age = 25;
//    boxer.height = 1.8f;
//    boxer.weight = 80;
    
    // properties setters - setting values for properties
    // setters are used to set ))) the value to the class property while getters are used to get the set value
    [boxer setName: @"Vasya"];
    [boxer setAge: 25];
    [boxer setHeight: 1.8f];
    [boxer setWeight: 80.f];
    
    NSLog(@"name = Expected identifier%@", boxer.name );
    NSLog(@"%@", [boxer name]);
    
//    // properties getters
//    NSLog(@"name = %@", [boxer name]);
//    NSLog(@"age = %d", [boxer age]);
//    NSLog(@"height = %f", [boxer height]);
//    NSLog(@"weight = %f", [boxer weight]);
//
//    NSLog(@"name = %@", boxer.name);
//    NSLog(@"age = %d", boxer.age);
//    NSLog(@"height = %f", boxer.height);
//    NSLog(@"weight = %f", boxer.weight);
    
    
    return YES;
}


#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


@end
