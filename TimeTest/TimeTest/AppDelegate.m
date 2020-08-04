//
//  AppDelegate.m
//  TimeTest
//
//  Created by Dmitry Aksyonov on 23.02.2020.
//  Copyright © 2020 Dmitry Aksyonov. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    /*
     NSDate* date = [NSDate date];
     
     NSLog(@"%@", date);
     
     NSLog(@"%@", [date dateByAddingTimeInterval:5000]);
     
     NSLog(@"%@", [NSDate dateWithTimeIntervalSince1970:5.5]);
     */
    
    /*
     NSDate* date = [NSDate date];
     
     NSDateFormatter* dateFormatter = [[NSDateFormatter alloc] init];
     
     [dateFormatter setDateStyle:NSDateFormatterShortStyle];
     NSLog(@"%@", [dateFormatter stringFromDate:date]);
     
     [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
     NSLog(@"%@", [dateFormatter stringFromDate:date]);
     
     [dateFormatter setDateStyle:NSDateFormatterLongStyle];
     NSLog(@"%@", [dateFormatter stringFromDate:date]);
     
     [dateFormatter setDateStyle:NSDateFormatterFullStyle];
     NSLog(@"%@", [dateFormatter stringFromDate:date]);
     
         [dateFormatter setDateFormat:@"y yy yyy yyyy M MM MMM MMMM MMMMM"];
         [dateFormatter setDateFormat:@"y yy yyy yyyy M MM MMM MMMM MMMMM d dd ddd dddd ddddd D DD DDD DDDD DDDDD"];
         [dateFormatter setDateFormat:@"yyyy/MM/dd EEEE hh:mm:SS a W"];
     
     [dateFormatter setDateFormat:@"yyyy/MM/dd HH:mm"];
     NSLog(@"%@", [dateFormatter stringFromDate:date]);
     
     NSDate* date3 = [dateFormatter dateFromString:@"2008/05/17 15:25"];
     NSLog(@"%@", date3);
     */

    /*
    NSDate* date  = [NSDate date];

    NSCalendar* calendar = [NSCalendar currentCalendar];
    
    NSDateComponents* components = [calendar components:
                                    kCFCalendarUnitYear |
                                    kCFCalendarUnitMonth |
                                    kCFCalendarUnitDay |
                                    kCFCalendarUnitHour |
                                    kCFCalendarUnitMinute |
                                    kCFCalendarUnitSecond
                                               fromDate:date];
    
    NSLog(@"%@", components);
    */
    
    NSDate* date1 = [NSDate date];
    NSDate* date2 = [NSDate dateWithTimeIntervalSinceNow:-1005000];
    
    NSCalendar* calendar = [NSCalendar currentCalendar];
    
    NSDateComponents* components = [calendar components:kCFCalendarUnitDay fromDate:date1 toDate:date2 options:<#(NSCalendarOptions)#>]
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
