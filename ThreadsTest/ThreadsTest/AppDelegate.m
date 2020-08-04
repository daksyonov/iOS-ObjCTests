//
//  AppDelegate.m
//  ThreadsTest
//
//  Created by Dmitry Aksyonov on 22.02.2020.
//  Copyright © 2020 Dmitry Aksyonov. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (strong, nonatomic) NSMutableArray* array;

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    //    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    //    self.window.backgroundColor = [UIColor whiteColor];
    //    [self.window makeKeyAndVisible];
    
    //    [self performSelector:@selector(testThread) withObject:nil];
    
    //    for (int i = 0; i <= 50; i++) {
    //            NSThread * thread = [[NSThread alloc] initWithTarget:self selector:@selector(testThread) object:nil];
    //            thread.name = [NSString stringWithFormat:@"Thread #%d", i];
    //            [thread start];
    //
    //        [[NSThread currentThread] isMainThread];
    //
    //    }
    
    
    //    NSThread * thread1 = [[NSThread alloc] initWithTarget:self selector:@selector(addStringToArray:) object:@"X"];
    //    NSThread * thread2 = [[NSThread alloc] initWithTarget:self selector:@selector(addStringToArray:) object:@"O"];
    //    thread1.name = @"Thread 1";
    //    thread2.name = @"Thread 2";
    //    [thread1 start];
    //    [thread2 start];
    //
        
    //
    //    [self performSelector:@selector(printArray) withObject:nil afterDelay:3];
    //
    //    NSLog(@"%@", self.array);
    
    self.array = [NSMutableArray array];
    
//    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    
    dispatch_queue_t queue = dispatch_queue_create("com.dasksyonov.test.queue", DISPATCH_QUEUE_CONCURRENT_WITH_AUTORELEASE_POOL);
    
    __weak id weakSelf = self;
    
    dispatch_async(queue, ^{
        [weakSelf addStringToArray:@"0"];
    });
    dispatch_async(queue, ^{
        [weakSelf addStringToArray:@"X"];
    });
    
    [self performSelector:@selector(printArray) withObject:nil afterDelay:3];
    
    return YES;
}


#pragma mark - UISceneSession lifecycle

- (void) testThread {
    
    @autoreleasepool {
        
        double startTime = CACurrentMediaTime();
        
        NSLog(@"%@ started", [[NSThread currentThread] name]);
        
        for (int i = 0; i < 200000; i++) {
        }
        
        NSLog(@"%@ finished in %f", [[NSThread currentThread] name], CACurrentMediaTime() - startTime);
    }
    
}


- (void) addStringToArray:(NSString*) string {
    
    @autoreleasepool {
        
        double startTime = CACurrentMediaTime();
        
//        @synchronized (self) {
            
            NSLog(@"%@ started", [[NSThread currentThread] name]);
        
            for (int i = 0; i < 200000; i++) {
                [self.array addObject:string];
            }
            
            NSLog(@"%@ finished in %f", [[NSThread currentThread] name], CACurrentMediaTime() - startTime);
            
        }
        
//    }
    
}


- (void) printArray {
    NSLog(@"%@",self.array);
}


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
