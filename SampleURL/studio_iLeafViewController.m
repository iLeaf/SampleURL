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

@interface studio_iLeafViewController ()

@end

@implementation studio_iLeafViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //UrlGen *gen = [[UrlGen alloc] init];
    //[gen goRequest:@"gogo"];
    
    
    NSMutableDictionary *parameters = [[NSMutableDictionary alloc] init];
    [parameters setObject:@"1" forKey:@"include_entities"];
    [parameters setObject:@"100" forKey:@"count"];
    [parameters setObject:@"aaa" forKey:@"AAA"];
    [parameters setObject:@"bbb" forKey:@"BBB"];
    [parameters setObject:@"ccc" forKey:@"CCC"];
    
    NSLog(@"%@",[QueryBuilder build:parameters]);
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
