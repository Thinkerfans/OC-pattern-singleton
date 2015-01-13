//
//  SingletonObject.m
//  SinglePatternTest
//
//  Created by apple on 15-1-12.
//  Copyright (c) 2015年 thinker. All rights reserved.
//

#import "SingletonObject.h"

@implementation SingletonObject

+(SingletonObject *)getInstance{
    static SingletonObject *instance= nil;
    static dispatch_once_t predicate=0;
    dispatch_once(&predicate, ^{
        instance = [[super allocWithZone:NULL]init];
    });
    return instance;
}

+ (id)allocWithZone:(struct _NSZone *)zone{
    return [self getInstance];
}
@end
