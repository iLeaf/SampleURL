//
//  UrlBuilder.h
//  SampleURL
//
//  Created by 平杉 敦史 on 12/08/05.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UrlBuilder : NSObject

+(NSString*)buildString:(NSString*)url parameter:(NSDictionary*)dic;

@end
