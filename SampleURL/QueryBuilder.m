//
//  QueryBuilder.m
//  SampleURL
//
//  Created by 平杉 敦史 on 12/08/05.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "QueryBuilder.h"

@implementation QueryBuilder

+(NSString*)build:(NSDictionary*)dic
{
    if (!dic || [dic count]==0) {
        NSLog(@"error 0");
        return @"";
    }
    
    NSString *urlStr = @"?q=";
    NSArray *qArray = [dic allKeys];
    
    for (NSString *str in qArray) {
        urlStr = [urlStr stringByAppendingString:@"&"];
        urlStr = [urlStr stringByAppendingString:str];
        urlStr = [urlStr stringByAppendingString:@"="];
        urlStr = [urlStr stringByAppendingString:[dic objectForKey:str]];
    }
    
    return urlStr;
}

@end
