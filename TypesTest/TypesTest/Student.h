//
//  Student.h
//  TypesTest
//
//  Created by Dmitry Aksyonov on 20.02.2020.
//  Copyright © 2020 Dmitry Aksyonov. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef enum {
    GenderMale,
    GenderFemale
} Gender;

@interface Student : NSObject

@property (strong, nonatomic) NSString* name;
@property (assign, nonatomic) Gender gender;

@end

NS_ASSUME_NONNULL_END
