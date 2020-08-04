//
//  ParentClass.m
//  FunctionsTest
//
//  Created by Dmitry Aksyonov on 20.02.2020.
//  Copyright © 2020 Dmitry Aksyonov. All rights reserved.
//

#import "ParentClass.h"

@implementation ParentClass

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"Instance of the Parent class is created");
    }
    return self;
}

+ (void) whoAreYou { // plus sign is the class-method
    NSLog(@"I am ParentClass");
}


- (void) sayHello { // minus = method belong to object, (void) - return parameter
    NSLog(@"Parent says hello!");
}

- (void) say:(NSString*) string {
    NSLog(@"%@", string);
}

- (void) say:(NSString*) string and:(NSString*) string2 { // multiple parameters passed
    NSLog(@"%@, %@", string, string2);
}

- (void) sayLots:(NSString*) string and:(NSString*) string2 andAfterThat:(NSString*) string3 { // multiple parameters passed
    NSLog(@"%@, %@, %@", string, string2, string3);
}

- (NSString*) saySomething {
    NSString* string = [self saySomeNumberString];
    return string;
}

- (NSString*) saySomeNumberString {
    return [NSString stringWithFormat:@"%@", [NSDate date]];
}

@end
