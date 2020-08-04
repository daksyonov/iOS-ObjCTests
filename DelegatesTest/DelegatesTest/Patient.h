//
//  Patient.h
//  DelegatesTest
//
//  Created by Dmitry Aksyonov on 21.02.2020.
//  Copyright © 2020 Dmitry Aksyonov. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol PatientDelegate;

@interface Patient : NSObject

@property (strong, nonatomic) NSString* name;
@property (assign, nonatomic) float temperature;
@property (weak, nonatomic) id <PatientDelegate> delegate;

- (BOOL) howAreYou;
- (void) takePill;
- (void) makeShot;

@end

@protocol PatientDelegate
@required
- (void) patientFeelsBad:(Patient*) patient;
- (void) patient:(Patient*) patient hasQuestion:(NSString*) question;

@end

NS_ASSUME_NONNULL_END
