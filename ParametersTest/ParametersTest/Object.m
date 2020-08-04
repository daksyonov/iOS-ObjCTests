//
//  Object.m
//  ParametersTest
//
//  Created by Dmitry Aksyonov on 20.02.2020.
//  Copyright © 2020 Dmitry Aksyonov. All rights reserved.
//

#import "Object.h"

@implementation Object

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"Object is cerated");
    }
    return self;
}


- (void) dealloc {
    NSLog(@"The object is deallocated...");
}

- (id)copyWithZone:(nullable NSZone *)zone {
    return [[Object alloc] init];
}

@end
