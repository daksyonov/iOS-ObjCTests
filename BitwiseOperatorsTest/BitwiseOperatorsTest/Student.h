//
//  Student.h
//  BitwiseOperatorsTest
//
//  Created by Dmitry Aksyonov on 23.02.2020.
//  Copyright © 2020 Dmitry Aksyonov. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    
    StudentSubjectTypeBiology        = 1 << 0,
    StudentSubjectTypeMath           = 1 << 1,
    StudentSubjectTypeDevelopment    = 1 << 2,
    StudentSubjectTypeEngineering    = 1 << 3,
    StudentSubjectTypeArt            = 1 << 4,
    StudentSubjectTypePsychology     = 1 << 5,
    StudentSubjectTypeAnatomy        = 1 << 6,
    
} StudentSubjectType;


NS_ASSUME_NONNULL_BEGIN

@interface Student : NSObject

@property (assign, nonatomic) StudentSubjectType subjectType;

//@property (assign, nonatomic) BOOL studiesBiology;
//@property (assign, nonatomic) BOOL studiesMath;
//@property (assign, nonatomic) BOOL studiesDevelopment;
//@property (assign, nonatomic) BOOL studiesEngineering;
//@property (assign, nonatomic) BOOL studiesArt;
//@property (assign, nonatomic) BOOL studiesPsychology;
//@property (assign, nonatomic) BOOL studiesAnatomy;

@end

NS_ASSUME_NONNULL_END
