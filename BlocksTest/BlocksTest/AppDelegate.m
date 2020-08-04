//
//  AppDelegate.m
//  BlocksTest
//
//  Created by Dmitry Aksyonov on 21.02.2020.
//  Copyright © 2020 Dmitry Aksyonov. All rights reserved.
//

#import "AppDelegate.h"
#import "MyObject.h"

typedef void (^OurTestBlock)(void);

@interface AppDelegate ()

@property (copy, nonatomic) OurTestBlock testBlock;
@property (strong, nonatomic) NSString* name;

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    //    [self testMethod];
    
    
    //    void (^testBlock)(void);
    //
    //    testBlock = ^{
    //        NSLog(@"test block");
    //    };
    //
    //    void (^testBlockWithParams)(NSString*, NSInteger) = ^(NSString* string, NSInteger intValue) {
    //        NSLog(@"testBlock with params %@ %d.", string, intValue);
    //    };
    //
    //    testBlock();
    //    testBlockWithParams(@"test string", 111);
    //
    //    NSString* result = [self testMethodWithReturnValueAndParams:@"test" value:111];
    //    NSLog(@"result = %@", result);
    //
    //    [self testMethodWithParams:@"!!!" value:111];
    //
    //    NSString* (^testBlockWithReturnValueAndParams) (NSString*, NSInteger) = ^(NSString* string, NSInteger intValue) {
    //        return [NSString stringWithFormat:@"testMethodWithReturnValueAndParams %@ %d", string, intValue];
    //    };
    //
    //    NSString* result2 = testBlockWithReturnValueAndParams(@"test block string", 111);
    //    NSLog(@"%@", result2);
    
//    __block NSString* testString = @"how is it possible?!";
//    __block NSInteger i = 1;
//
//
//    void (^testBlock2)(void);
//
//    testBlock2 = ^{
//        NSLog(@"test block");
//        testString = [NSString stringWithFormat:@"How is it possible? BTW the block is called %d times...", i++];
//        NSLog(@"%@", testString);
//    };
//
//    testBlock2();
//    testBlock2();
//    testBlock2();
//    testBlock2();
//    testBlock2();
    
    [self testBlocksMethod:^{
        NSLog(@"BLOCK");
    }];
    
    OurTestBlock testBlock2 = ^{
        NSLog(@"test block, created with a typedef");
    };
    
    [self testBlocksMethod:testBlock2];
    
    MyObject* testObject = [[MyObject alloc] init];
    testObject.name = @"OBJECT";
    
    self.testBlock = ^{
        NSLog(@"%@", testObject.name);
    };
    
    self.testBlock();
    
    self.name = @"Hello!";
    
    MyObject* testObject2 = [[MyObject alloc] init];
    testObject2.name = @"testObject2";
    
    [testObject2 testMethod:^{
        NSLog(@"%@", self.name);
    }] ;
    
    return YES;
}

- (void) testMethod {
    NSLog(@"test method.");
}

- (void) testMethodWithParams:(NSString*) string value:(NSInteger) intValue {
    NSLog(@"test method with params %@ %d.", string, intValue);
}

- (NSString*) testMethodWithReturnValueAndParams:(NSString*) string value:(NSInteger) intValue {
    return [NSString stringWithFormat: @"test method with params %@ %d.", string, intValue];
}

- (void) testBlocksMethod: (void (^)(void)) testBlock {
    NSLog(@"testBlockMethod X");
    testBlock();
}

- (void) testBlocksMethod2: (OurTestBlock) testBlock {
    NSLog(@"testBlockMethod X");
    testBlock();
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
