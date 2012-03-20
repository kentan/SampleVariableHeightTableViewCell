//
//  VHTDataManager.m
//  SampleVariableHeightTableViewCell
//
//  Created by Kentan on 12/03/11.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "VHDataManager.h"

@implementation VHDataManager



-(VHDataManager *)init
{
    self = [super init];
    if(self){
        dataArray = [[NSMutableArray alloc]init];
    }
    return self;
}

-(void)createNewData
{
    
    // create  string with random length.
    int num = 30 + rand() % 30;
    NSMutableString* str = [[NSMutableString alloc]init];
    
    
    for(int i = 0; i < num; i++){
        [str appendFormat:@"word%d ",i];
    }
    [str appendString:@"<a href='http://google.com'>go to google.com</a>"];

    [dataArray addObject:str];
}

-(id)getData:(int)index
{
    return [dataArray objectAtIndex:index];
}

@end
