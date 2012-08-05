//
//  UrlGen.m
//  SampleURL
//
//  Created by 平杉 敦史 on 12/08/05.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "UrlGen.h"

@implementation UrlGen

-(void)goRequest:(NSString *)urlStr
{
    NSLog(@"goRequest %@",urlStr);
    
    /*
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:@"http://192.168.11.3/jsonReplySample.json"]];
    NSData *json_data = [NSURLConnection sendSynchronousRequest:request returningResponse:nil error:nil];
    NSError *error=nil;
    NSDictionary *jsonObject = [NSJSONSerialization JSONObjectWithData:json_data options:NSJSONReadingAllowFragments error:&error];
    NSLog(@"jsonObject = %@", [jsonObject description]);
     */
}

@end
