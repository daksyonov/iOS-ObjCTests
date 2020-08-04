//
//  Dancer.m
//  ProtocolsTest
//
//  Created by Dmitry Aksyonov on 20.02.2020.
//  Copyright © 2020 Dmitry Aksyonov. All rights reserved.
//

#import "Dancer.h"

@implementation Dancer

- (void) dance {
    
}

- (BOOL) areYouOk {
    BOOL ok = arc4random() % 2;
    NSLog(@"Is Dancer %@ ok? %@", self.name, ok ? @"YES" : @"NO");
    return ok;
}

- (void) talePill {
    NSLog(@"Dancer %@ takes a pill", self.name);
}

- (void) makeShot {
    NSLog(@"Dancer %@ takes a shot", self.name);
}

@end
