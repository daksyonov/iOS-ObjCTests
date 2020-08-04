//
//  AppDelegate.m
//  ProtocolsTest
//
//  Created by Dmitry Aksyonov on 20.02.2020.
//  Copyright © 2020 Dmitry Aksyonov. All rights reserved.
//

#import "AppDelegate.h"
#import "Patient.h"
#import "Dancer.h"
#import "Student.h"
#import "Developer.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    Dancer* dancer1 = [[Dancer alloc] init];
    Dancer* dancer2 = [[Dancer alloc] init];
    
    Student* student1 = [[Student alloc] init];
    Student* student2 = [[Student alloc] init];
    Student* student3 = [[Student alloc] init];
    
    Developer* developer1 = [[Developer alloc] init];
    
    dancer1.name = @"Dancer Vasya";
    dancer2.name = @"Dancer Kolya";
    
    student1.name = @"Student Danich";
    student2.name = @"Student Sanyok";
    student3.name = @"Student Dimas";
    
    developer1.name = @"Developer Illarion";
    
    NSObject* fake = [[NSObject alloc] init];
    
    NSArray* patients = [NSArray arrayWithObjects:fake, dancer1, dancer2, student1, student2, student3, developer1, nil];
    
    for (id <Patient> patient in patients) {
        
        if ([ patient conformsToProtocol:@protocol(Patient)]) {
            
            NSLog(@"Patient name: = %@", patient.name);
            
            if ([patient respondsToSelector:@selector(howIsYourFamily)]) {
                NSLog(@"How is your family? \n%@", [patient howIsYourFamily]);
            }
            
            if ([patient respondsToSelector:@selector(howIsYourJob)]) {
                NSLog(@"How is your job? \n%@", [patient howIsYourJob]);
            }
            
            if (![patient areYouOk]) {
                [patient talePill];
                
                if (![patient areYouOk]) {
                    [patient makeShot];
                }
            }
        } else {
            NSLog(@"FAKE!!111");
        }
    }
    
    //    for (id <Patient> patient in patients) {
    //        [patient makeShot];
    //    }
    
    
    
    
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
