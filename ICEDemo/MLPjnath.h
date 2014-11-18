//
//  MLPjnath.h
//  ICEDemo
//
//  Created by 林 政龍 on 2014/11/18.
//  Copyright (c) 2014年 marstudio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <pjsua.h>

@interface MLPjnath : NSObject

- (pj_status_t)icedemoInit;
- (void)createInstance;
- (void)initSession:(unsigned)rolechar;

@end
