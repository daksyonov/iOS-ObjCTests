//
//  AppDelegate.m
//  DelegatesTest
//
//  Created by Dmitry Aksyonov on 21.02.2020.
//  Copyright © 2020 Dmitry Aksyonov. All rights reserved.
//

#import "AppDelegate.h"
#import "Doctor.h"
#import "Patient.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    Patient* patient1 = [[Patient alloc] init];
    patient1.name = @"Vova";
    patient1.temperature = 36.6f;
    
    Patient* patient2 = [[Patient alloc] init];
    patient2.name = @"Petya";
    patient2.temperature = 40.2f;
    
    Patient* patient3 = [[Patient alloc] init];
    patient3.name = @"Dima";
    patient3.temperature = 37.1f;
    
    Patient* patient4 = [[Patient alloc] init];
    patient4.name = @"Sasha";
    patient4.temperature = 38.f;
    
    Doctor* doctor = [[Doctor alloc] init];
    
    
    patient1.delegate = doctor;
    patient2.delegate = doctor;
    patient3.delegate = doctor;
    patient4.delegate = doctor;
    
    NSLog(@"%@, are you ok? %@", patient1.name, [patient1 howAreYou] ? @"Yes." : @"No, please help!");
    NSLog(@"%@, are you ok? %@", patient2.name, [patient2 howAreYou] ? @"Yes." : @"No, please help!");
    NSLog(@"%@, are you ok? %@", patient2.name, [patient3 howAreYou] ? @"Yes." : @"No, please help!");
    NSLog(@"%@, are you ok? %@", patient4.name, [patient4 howAreYou] ? @"Yes." : @"No, please help!");
    
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
