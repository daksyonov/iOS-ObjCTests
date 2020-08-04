//
//  ChildClass.m
//  FunctionsTest
//
//  Created by Dmitry Aksyonov on 20.02.2020.
//  Copyright © 2020 Dmitry Aksyonov. All rights reserved.
//

#import "ChildClass.h"

@implementation ChildClass

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"Instance of the Child class is created");
    }
    return self;
}

- (NSString*) saySomething {
    return [super saySomeNumberString];
}

- (NSString*) saySomeNumberString {
    return [NSString stringWithFormat:@"%@", [NSDate date]];
}



@end
