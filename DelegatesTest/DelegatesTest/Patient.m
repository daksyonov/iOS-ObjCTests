//
//  Patient.m
//  DelegatesTest
//
//  Created by Dmitry Aksyonov on 21.02.2020.
//  Copyright © 2020 Dmitry Aksyonov. All rights reserved.
//

#import "Patient.h"

@implementation Patient

- (BOOL) howAreYou {
    
    BOOL iFeelGood = NO;
    
    if (!iFeelGood) {
        [self.delegate patientFeelsBad: self];
    }
    
    return iFeelGood;
}
- (void) takePill {
    NSLog(@"%@ takes a pill", self.name);
}
- (void) makeShot {
    NSLog(@"%@ takes a shot", self.name);
}

@end
