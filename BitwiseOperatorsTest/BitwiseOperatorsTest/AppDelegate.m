//
//  AppDelegate.m
//  BitwiseOperatorsTest
//
//  Created by Dmitry Aksyonov on 23.02.2020.
//  Copyright © 2020 Dmitry Aksyonov. All rights reserved.
//

#import "AppDelegate.h"
#import "Student.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
//    Student* student = [[Student alloc] init];
//
//    student.studiesAnatomy = YES;
//    student.studiesDevelopment = YES;
//    student.studiesEngineering = YES;
//    student.studiesMath = YES;
//    student.studiesPsychology = NO;
//    student.studiesArt = NO;
//    student.studiesBiology = NO;
    
    Student* student = [[Student alloc] init];
    
    NSLog(@"current 'subject type' content is: %u", student.subjectType);
    
    student.subjectType = StudentSubjectTypeAnatomy | StudentSubjectTypeDevelopment | StudentSubjectTypeEngineering | StudentSubjectTypeMath;
    
    NSLog(@"%@", student);
    NSLog(@"current 'subject type' content is: %u", student.subjectType);
    
    
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
