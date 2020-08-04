//
//  Patient.h
//  ProtocolsTest
//
//  Created by Dmitry Aksyonov on 20.02.2020.
//  Copyright © 2020 Dmitry Aksyonov. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Patient <NSObject>

@required
@property (strong, nonatomic) NSString* name;

- (BOOL) areYouOk;
- (void) talePill;
- (void) makeShot;

@optional
- (NSString*) howIsYourFamily;
- (NSString*) howIsYourJob;

@end
