//
//  AppDelegate.m
//  SelectorsTest
//
//  Created by Dmitry Aksyonov on 21.02.2020.
//  Copyright © 2020 Dmitry Aksyonov. All rights reserved.
//

#import "AppDelegate.h"
#import "Object.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
//    Object* obj = [[Object alloc] init];
//
//    SEL selector1 = @selector(testMethod);
//    SEL selector2 = @selector(testMethod:);
//    SEL selector3 = @selector(testMethod:parameter2:);
//
//    [self performSelector:selector1];
//    [obj performSelector:selector1];
//
//    NSString* secret = [obj performSelector:@selector(superSecretText)];
//
//    NSLog(@"secret: %@", secret);
//
//    [self performSelector:@selector(testMethodParameter1:) withObject:[NSNumber numberWithInt:11]];
//
//    NSString* a = NSStringFromSelector(selector1);
//    SEL sel = NSSelectorFromString(a);
//
//    NSString* string = [self testMethodParameter1:2 parameter2:3.1 parameter3:5.55];
//    NSLog(@"string = %@", string);
    
    SEL selector = @selector(testMethodParameter1:parameter2:parameter3:);
    
    NSMethodSignature* signature = [AppDelegate instanceMethodSignatureForSelector:selector];
    
    NSInvocation* invocation = [NSInvocation invocationWithMethodSignature:signature];
    
    [invocation setTarget:self];
    [invocation setSelector:selector];
    
    NSInteger inValue = 2;
    float floatValue = 3.1f;
    double doubleValue = 5.5f;
    
    NSInteger* p1 = &inValue;
    float* p2 = &floatValue;
    double* p3 = &doubleValue;
    
    [invocation setArgument:p1 atIndex:2];
    [invocation setArgument:p2 atIndex:3];
    [invocation setArgument:p3 atIndex:4];
    
    [invocation invoke];
    
    __unsafe_unretained  NSString* string = nil;
        
    [invocation getReturnValue:&string];
    
    NSLog(@"string = %@", string);
    
    return YES;
}

- (void) testMethodParameter1: (NSInteger) intValue {
    NSLog(@"testMethodParameter1: %d", intValue);
}

- (void) testMethod {
    NSLog(@"testMethod");
}

- (void) testMethod: (NSString*) string {
    NSLog(@"test method: %@", string);
}

- (void) testMethod:(NSString*) string parameter2:(NSString*) string2 {
    NSLog(@"test method: %@, paremeter2: %@", string, string2);
}

- (NSString*) testMethodParameter1:(NSInteger) intValue parameter2:(float) floatValue parameter3:(double) doubleValue {
    return [NSString stringWithFormat:@"test method parameter1: %d, paremeter2: %f, paremeter3: %f", intValue, floatValue, doubleValue];
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
