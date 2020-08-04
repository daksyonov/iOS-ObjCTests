//
//  Object.h
//  ArraysTest
//
//  Created by Dmitry Aksyonov on 20.02.2020.
//  Copyright © 2020 Dmitry Aksyonov. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Object : NSObject

@property (strong, nonatomic) NSString* name;

- (void) action;

@end

NS_ASSUME_NONNULL_END
