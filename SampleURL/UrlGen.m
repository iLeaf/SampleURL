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
     
    NSURL *URL = [NSURL URLWithString:@"https://api.twitter.com/search.json?q=hoge"];
    
    NSURLRequest *request = [NSURLRequest requestWithURL:URL];
      
    
    [NSURLConnection sendAsynchronousRequest:request queue:[NSOperationQueue mainQueue] 
                           completionHandler:^(NSURLResponse *response, NSData *data, NSError *error) {
                                
                               if (error) {
                                   NSLog(@"error: %@", [error localizedDescription]);
                                   return;
                               }
                                
                               NSDictionary *dictionary =
                               [NSJSONSerialization JSONObjectWithData:data
                                                               options:NSJSONReadingAllowFragments
                                                                 error:nil];
                               NSLog(@"%@",dictionary);
                                
                            }];
}

@end
