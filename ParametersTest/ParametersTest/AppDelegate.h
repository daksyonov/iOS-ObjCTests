//
//  AppDelegate.h
//  ParametersTest
//
//  Created by Dmitry Aksyonov on 20.02.2020.
//  Copyright © 2020 Dmitry Aksyonov. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Object;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (copy, nonatomic, readwrite) Object* object; // atomic = prop can be used in one thread, nonatomic - can be used in multiple threads, readwrite = acces to getteer and setter is granted. strong = object cannot be deallocated while at lest 1 strong link to it is present. weak = controversial. assign = if the object is deallocated, than nil. copy - otdelny razgovor

@end

