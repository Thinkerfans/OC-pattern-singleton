//
//  main.m
//  SinglePatternTest
//
//  Created by apple on 15-1-12.
//  Copyright (c) 2015年 thinker. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SingletonObject.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        SingletonObject *obj1 = [SingletonObject getInstance];
        NSLog(@"obj1=%@",obj1);
        SingletonObject *obj2 = [SingletonObject getInstance];
        NSLog(@"obj1=%@",obj2);
        SingletonObject *obj3 = [[SingletonObject alloc]init];
        NSLog(@"obj1=%@",obj3);
        SingletonObject *obj4 = [[SingletonObject allocWithZone:nil]init];
        NSLog(@"obj1=%@",obj4);

        NSLog(@"%d,%d,%d",obj4==obj3,obj3==obj2,obj2==obj1);
    }
    return 0;
}
