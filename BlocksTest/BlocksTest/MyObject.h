//
//  MyObject.h
//  BlocksTest
//
//  Created by Dmitry Aksyonov on 22.02.2020.
//  Copyright © 2020 Dmitry Aksyonov. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef void(^ObjectBlock) (void);

@interface MyObject : NSObject

@property (strong, nonatomic) NSString* name;

- (void) testMethod: (ObjectBlock) block;

@end

NS_ASSUME_NONNULL_END
