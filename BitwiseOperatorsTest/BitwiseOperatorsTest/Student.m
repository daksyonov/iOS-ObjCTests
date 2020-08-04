//
//  Student.m
//  BitwiseOperatorsTest
//
//  Created by Dmitry Aksyonov on 23.02.2020.
//  Copyright © 2020 Dmitry Aksyonov. All rights reserved.
//

#import "Student.h"

@implementation Student

- (NSString*) answerByType:(StudentSubjectType) type {
    
    return self.subjectType & type ? @"Yes" : @"No";
    
}

- (NSString*) description {
    
    return [NSString stringWithFormat:  @"Student studies: \n"
                                        "Biology = %@\n"
                                        "Math = %@\n"
                                        "Development = %@\n"
                                        "Engineering = %@\n"
                                        "Art = %@\n"
                                        "Psychology = %@\n"
                                        "Anatomy = %@\n",
        
                                        [self answerByType:StudentSubjectTypeBiology],
                                        [self answerByType:StudentSubjectTypeMath],
                                        [self answerByType:StudentSubjectTypeDevelopment],
                                        [self answerByType:StudentSubjectTypeEngineering],
                                        [self answerByType:StudentSubjectTypeArt],
                                        [self answerByType:StudentSubjectTypePsychology],
                                        [self answerByType:StudentSubjectTypeAnatomy]];
        
            }

@end
