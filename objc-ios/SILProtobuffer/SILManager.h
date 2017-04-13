//
//  SILManager.h
//  SILProtobuffer
//
//  Created by JUNCHAO on 2017/3/14.
//  Copyright © 2017年 silver6wings. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SILAPI.h"

@class AFHTTPSessionManager;

@interface SILManager : NSObject

@property (nonatomic, weak) id <SILRequestDelegate> requestDelegate;
@property (nonatomic, weak) id <SILResponseDelegate> responseDelegate;

@property (nonatomic, assign) BOOL isDebugging;

@property (nonatomic, strong) AFHTTPSessionManager *sessionManager;

@property (nonatomic, strong) NSString *debugServerURL;
@property (nonatomic, strong) NSString *onlineServerURL;

@property (nonatomic, strong, readonly) NSString *serverURL;

+ (instancetype)instance;

@end
