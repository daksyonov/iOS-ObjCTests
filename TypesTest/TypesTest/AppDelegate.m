//
//  AppDelegate.m
//  TypesTest
//
//  Created by Dmitry Aksyonov on 20.02.2020.
//  Copyright © 2020 Dmitry Aksyonov. All rights reserved.
//

#import "AppDelegate.h"
#import "Student.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    BOOL boolVar = YES;
    NSInteger intVar = 10;
    NSUInteger uIntVar = 100;
    CGFloat floatVar = 1.5f;
    double doubleVar = 2.5f;
    
    NSNumber* boolObject = [NSNumber numberWithBool:boolVar];
    NSNumber* intObject = [NSNumber numberWithInt:intVar];
    NSNumber* uIntObject = [NSNumber numberWithUnsignedInt:uIntVar];
    NSNumber* floatObject = [NSNumber numberWithFloat:floatVar];
    NSNumber* doubleObject = [NSNumber numberWithDouble:doubleVar];
    
    NSArray* array = [NSArray arrayWithObjects:boolObject, intObject, uIntObject, floatObject, doubleObject, nil];
    
    
    NSLog(@"boolVar = %d, intVar = %d, uIntVar = %d, floatVar = %f, doubleVar = %f",
    [[array objectAtIndex:0] boolValue],
    [[array objectAtIndex:1] integerValue],
    [[array objectAtIndex:2] unsignedIntValue],
    [[array objectAtIndex:3] floatValue],
    [[array objectAtIndex:4] doubleValue]);
    
    NSLog(@"boolVar = %d, intVar = %d, uIntVar = %d, floatVar = %f, doubleVar = %f", boolVar, intVar, uIntVar, floatVar, doubleVar);
    NSLog(@"\nBOOL = %ld bit,\nNSInteger = %ld bytes,\nNSUInteger = %ld bytes,\nCGFloat = %ld bytes,\ndouble = %ld bytes\n", sizeof(boolVar), sizeof(intVar), sizeof(uIntVar), sizeof(floatVar), sizeof(doubleVar));

    NSInteger a = floatVar;
    NSLog(@"%d", a);

    Student* studentA = [[Student alloc] init];
    Student* studentB = studentA;

    studentA.name = @"Best Student";
    NSLog(@"Student A name is: %@.", studentA.name);

    studentB.name = @"Bad Student";
    NSLog(@"Student A name is: %@.", studentA.name);

    NSInteger b = 10;
    NSLog(@"b = %d", b);

    NSInteger c = b;
    b = 5;
    NSLog(@"b = %d, c = %d", b, c);

    NSInteger* d = &b;
    *d = 8;
    NSLog(@"b = %d, d = %d", b, d);

    NSInteger result = [self test:b testPointer:&d];

    Student* studentC = [[Student alloc] init];
    [studentC setGender:GenderMale];

    CGPoint point;
    point.x = 5.5f;
    point.y = 6;
    point = CGPointMake(5, 3);

    CGSize size;
    size.width = 4;
    size.width = 6;
    size = CGSizeMake(5, 6);

    CGRect rect;
    rect.origin = point;
    rect.size = size;
    rect = CGRectMake(point.x, point.y, size.width, size.height);

    BOOL res = CGRectContainsPoint(rect, point);

    CGPoint point1 = CGPointMake(0, 5);
    CGPoint point2 = CGPointMake(1, 4);
    CGPoint point3 = CGPointMake(2, 3);
    CGPoint point4 = CGPointMake(3, 2);
    CGPoint point5 = CGPointMake(4, 1);
    
    NSArray* array2 = [NSArray arrayWithObjects:
                       [NSValue valueWithCGPoint:point1],
                       [NSValue valueWithCGPoint:point2],
                       [NSValue valueWithCGPoint:point3],
                       [NSValue valueWithCGPoint:point4],
                       [NSValue valueWithCGPoint:point5],
                       nil];
    
    for (NSValue* value in array2) {
        CGPoint p = [value CGPointValue];
        NSLog(@"point = %@", NSStringFromCGPoint(p));
    }
    
    
    return YES;
}

- (int) test: (NSInteger) test testPointer:(NSInteger*) testPionter {
    return test;
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
