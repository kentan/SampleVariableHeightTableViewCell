//
//  VHTDataManagerFactory.m
//  SampleVariableHeightTableViewCell
//
//  Created by Kentan on 12/03/11.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "VHDataManagerSingleton.h"

@implementation VHDataManagerSingleton
static id instance = nil;

+(VHDataManagerSingleton*)newInstance
{
	@synchronized(self){
		if(!instance){
			instance = [[self alloc]init];
		}
	}
	return instance;
}

-(id)init
{
    self = [super init];
    if(self){
        dataArray = [[NSMutableArray alloc]init];
        
    }
    return self;
    
}

BOOL flag = true;
-(NSInteger)createNewData
{
    
    // create  string with random length.
    int num = 10 + rand() % 20;
    NSMutableString* str = [[NSMutableString alloc]init];
    

        
    for(int i = 0; i < num; i++){
        [str appendFormat:@"word%d ",i];
    }
    // sample string to test <a> tag
    [str appendString:@"<a href='http://google.com'>go to google.com</a>"];

    
    [dataArray addObject:str];
    
    return [dataArray count] - 1;
}

-(id)getData:(NSInteger)index
{
    if(index <= [self countOfData] - 1){
        return [dataArray objectAtIndex:index];
    }
    return nil;
}

-(NSInteger)countOfData
{
    
    return [dataArray count];
}
@end
