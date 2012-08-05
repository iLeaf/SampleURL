//
//  studio_iLeafViewController.m
//  SampleURL
//
//  Created by 平杉 敦史 on 12/08/05.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "studio_iLeafViewController.h"
#import "UrlGen.h"
#import "QueryBuilder.h"
#import "UrlBuilder.h"

@interface studio_iLeafViewController ()

@end

@implementation studio_iLeafViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //UrlGen *gen = [[UrlGen alloc] init];
    //[gen goRequest:@"gogo"];
    
    
    
    NSString *string = @"https://api.twitter.com/search.json";
    
    NSMutableDictionary *parameters = [[NSMutableDictionary alloc] init];
    [parameters setObject:@"1" forKey:@"include_entities"];
    [parameters setObject:@"100" forKey:@"count"];
    [parameters setObject:@"aaa" forKey:@"AAA"];
    [parameters setObject:@"hoge" forKey:@"q"];
    [parameters setObject:@"ccc" forKey:@"CCC"];
    
    NSString *urlStr = [UrlBuilder buildString:string parameter:parameters];
    //NSLog(@"%@",urlStr);
    
    NSURL *URL = [NSURL URLWithString:urlStr];
    NSURLRequest *request = [NSURLRequest requestWithURL:URL];
    
    __weak studio_iLeafViewController *_self = self;
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
                               //NSLog(@"%@",dictionary);
                               [_self didLoadedData:dictionary];
                               
                           }];
    
    //NSLog(@"%@",[QueryBuilder build:parameters]);
    
}

-(void)didLoadedData:(NSDictionary*)dic
{
    NSLog(@"didLoadedData %@",dic);
}



- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
