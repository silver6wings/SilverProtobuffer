//
//  SILDataManager.h
//  SILProtobuffer
//
//  Created by JUNCHAO on 2017/3/14.
//  Copyright © 2017年 silver6wings. All rights reserved.
//

#import <Foundation/Foundation.h>

@class GPBMessage;

@interface SILParser : NSObject

+ (GPBMessage *)dataToModel:(id)data
              withClassType:(Class)classType;

@end
