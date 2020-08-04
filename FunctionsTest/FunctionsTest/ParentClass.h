//
//  ParentClass.h
//  FunctionsTest
//
//  Created by Dmitry Aksyonov on 20.02.2020.
//  Copyright © 2020 Dmitry Aksyonov. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ParentClass : NSObject

+ (void) whoAreYou;

- (void) sayHello;
- (void) say:(NSString*) string;
- (void) say:(NSString*) string and:(NSString*) string2;
- (void) sayLots:(NSString*) string and:(NSString*) string2 andAfterThat:(NSString*) string3;
- (NSString*) saySomething;
- (NSString*) saySomeNumberString;

@end

NS_ASSUME_NONNULL_END
