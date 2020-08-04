//
//  Student.m
//  ProtocolsTest
//
//  Created by Dmitry Aksyonov on 20.02.2020.
//  Copyright © 2020 Dmitry Aksyonov. All rights reserved.
//

#import "Student.h"

@implementation Student

- (void) study {
    
}

#pragma mark - Patient

- (BOOL) areYouOk {
    BOOL ok = arc4random() % 2;
    NSLog(@"Is Student %@ ok? %@", self.name, ok ? @"YES" : @"NO");
    return ok;
}

- (void) talePill {
    NSLog(@"Student %@ takes a pill", self.name);
}

- (void) makeShot {
    NSLog(@"Student %@ takes a shot", self.name);
}

- (NSString*) howIsYourFamily {
    return @"My family is doing well!";
}


@end
