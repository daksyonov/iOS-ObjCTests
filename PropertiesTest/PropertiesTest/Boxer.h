//
//  Boxer.h
//  PropertiesTest
//
//  Created by Dmitry Aksyonov on 20.02.2020.
//  Copyright © 2020 Dmitry Aksyonov. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Boxer : NSObject

@property (strong, nonatomic) NSString* name;
@property (assign, nonatomic) NSInteger* age;
@property (assign, nonatomic) float height;
@property (assign, nonatomic) float weight;

- (NSInteger) howOldAreYou;

@end

NS_ASSUME_NONNULL_END
