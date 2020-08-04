//
//  MyObject.m
//  BlocksTest
//
//  Created by Dmitry Aksyonov on 22.02.2020.
//  Copyright © 2020 Dmitry Aksyonov. All rights reserved.
//

#import "MyObject.h"

@interface MyObject()

@property (copy, nonatomic) ObjectBlock objectBlock;

@end

@implementation MyObject

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        __weak MyObject* weakSelf = self;
        
        self.objectBlock = ^ {
            NSLog(@"%@", weakSelf.name);
        };
    }
    return self;
}

- (void) testMethod: (ObjectBlock) block {
    block();
}

- (void) dealloc {
    NSLog(@"the object is deallocated...");
}

@end
