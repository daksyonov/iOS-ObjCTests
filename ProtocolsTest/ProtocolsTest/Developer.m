//
//  Developer.m
//  ProtocolsTest
//
//  Created by Dmitry Aksyonov on 20.02.2020.
//  Copyright © 2020 Dmitry Aksyonov. All rights reserved.
//

#import "Developer.h"

@implementation Developer

- (void) work {
    
}

#pragma mark - Patient

- (BOOL) areYouOk {
    BOOL ok = arc4random() % 2;
    NSLog(@"Is Developer %@ ok? %@", self.name, ok ? @"YES" : @"NO");
    return ok;
}

- (void) talePill {
    NSLog(@"Developer %@ takes a pill", self.name);
}

- (void) makeShot {
    NSLog(@"Developer %@ takes a shot", self.name);
}

- (NSString*) howIsYourJob {
    return @"My job is awesome!";
}

@end
