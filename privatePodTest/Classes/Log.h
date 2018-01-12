//
//  Log.h
//  studyFramework
//
//  Created by cmomacpro on 2018/1/10.
//  Copyright © 2018年 cmomacpro. All rights reserved.
//

#import <Foundation/Foundation.h>

#define LogInfo(s, ...) [Log file:__FILE__ function: (char *)__FUNCTION__ lineNumber:__LINE__ format:(s),##__VA_ARGS__]

@interface Log : NSObject
+ (void)file:(char*)sourceFile function:(char*)functionName lineNumber:(int)lineNumber format:(NSString*)format, ...;
@end
