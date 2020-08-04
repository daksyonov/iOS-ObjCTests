//
//  Boxer.m
//  PropertiesTest
//
//  Created by Dmitry Aksyonov on 20.02.2020.
//  Copyright © 2020 Dmitry Aksyonov. All rights reserved.
//

#import "Boxer.h"

@interface Boxer ()

@property (assign, nonatomic) NSInteger nameCount; // that's how encapsulated property is called - encapsulation

@end

@implementation Boxer
@synthesize name = _name;

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.nameCount = 0;
        self.name = @"Default";
        self.age = 1;
        self.weight = 5.f;
        self.height = 52.f;
    }
    return self;
}

- (void) setName:(NSString *)name {
    NSLog(@"setter setName: is called");
    _name = name;
}

- (NSString*) name {
    self.nameCount++;
    NSLog(@"name getter is called %d times", self.nameCount);
    return _name;
}

- (NSInteger) age {
    NSLog (@"age getter is called");
    return _age;
}

- (NSInteger) howOldAreYou {
    return self.age;
}

@end
