//
//  UrlBuilder.m
//  SampleURL
//
//  Created by 平杉 敦史 on 12/08/05.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#define QUERRY @"?"

#import "UrlBuilder.h"

@implementation UrlBuilder

+(NSString*)buildString:(NSString*)url parameter:(NSDictionary*)dic
{
    //クエリパラメータがなければ基本URLのみ出力
    if (!dic || [dic count]==0) return url;
    
    //パラメータがある場合は文字列連結
    NSString *urlStr = QUERRY;
    NSArray *qArray = [dic allKeys];
    for (NSString *str in qArray) {
        if (![urlStr isEqualToString:QUERRY]) urlStr = [urlStr stringByAppendingString:@"&"];
        urlStr = [urlStr stringByAppendingString:str];
        urlStr = [urlStr stringByAppendingString:@"="];
        urlStr = [urlStr stringByAppendingString:[dic objectForKey:str]];
    }
    
    //基本URLとクエリパラメータを連結して出力
    urlStr = [url stringByAppendingString:urlStr];
    return urlStr;
}

@end
