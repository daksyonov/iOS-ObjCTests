//
//  Doctor.h
//  NotificationsTest
//
//  Created by Dmitry Aksyonov on 21.02.2020.
//  Copyright © 2020 Dmitry Aksyonov. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Doctor : NSObject

@property (assign, nonatomic) float salary;

- (void) salaryChangedNotification: (NSNotification*) notification;
- (void) averagePriceChangedNotification: (NSNotification*) notification;

@end

NS_ASSUME_NONNULL_END
