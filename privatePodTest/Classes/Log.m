//
//  Log.m
//  studyFramework
//
//  Created by cmomacpro on 2018/1/10.
//  Copyright © 2018年 cmomacpro. All rights reserved.
//

#import "Log.h"

@implementation Log
+ (void)file:(char*)sourceFile function:(char*)functionName lineNumber:(int)lineNumber format:(NSString*)format, ...
{
    va_list ap;
    NSString *print, *file, *function;
    va_start(ap,format);
    file = [[NSString alloc] initWithBytes: sourceFile length: strlen(sourceFile) encoding: NSUTF8StringEncoding];
    
    function = [NSString stringWithCString:functionName encoding:NSUTF8StringEncoding];
    print = [[NSString alloc] initWithFormat: format arguments: ap];
    va_end(ap);
    NSLog(@"%@:%d %@; %@", [file lastPathComponent], lineNumber, function, print);
}
@end
