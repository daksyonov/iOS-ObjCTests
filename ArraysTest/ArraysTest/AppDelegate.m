//
//  AppDelegate.m
//  ArraysTest
//
//  Created by Dmitry Aksyonov on 20.02.2020.
//  Copyright © 2020 Dmitry Aksyonov. All rights reserved.
//

#import "AppDelegate.h"
#import "ChildObject.h"
#import "Object.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
//    NSArray* array = [[NSArray alloc] initWithObjects:@"String 1", @"String 2", @"String 3", nil];

//    for (int i = 0; i < [array count]; i--) {
//        NSLog(@"%@", [array objectAtIndex:i]);
//        NSLog(@"i = %d", i);
//    }
//
//    for (int i = [array count] - 1; i >= 0; i--) {
//        NSLog(@"%@", [array objectAtIndex:i]);
//        NSLog(@"i = %d", i);
//    }
    
//    NSArray* array = [NSArray arrayWithObjects:@"String 1", @"String 2", @"String 3", nil];
    
//    NSArray* array = @[@"String 1", @"String 2", @"String 3"];
    
//    for (NSString* string in array) {
//        NSLog(@"%@", string);
//        NSLog(@"i = %d", [array indexOfObject: string]);
//    }
    
    Object* object1 = [[Object alloc] init];
    Object* object2 = [[Object alloc] init];
    ChildObject* object3 = [[ChildObject alloc] init];
    
    object1.name = @"Object 1";
    object2.name = @"Object 2";
    [object3 setName: @"Object 3"];
    object3.lastName = @"Vasiliy";
    
    NSArray* array = [NSArray arrayWithObjects: object1, object2, object3, nil];
    
    for (Object* obj in array) {
        NSLog(@"%@", obj.name);
        [obj action];
        
        if ([obj isKindOfClass:[ChildObject class]]) {
            
            ChildObject* child = (ChildObject*)obj;
            NSLog(@"%@", child.lastName);
        }
    }
    
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
