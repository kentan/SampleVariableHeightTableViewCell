//
//  VHTableViewCell.m
//  SampleVariableHeightTableViewCell
//
//  Created by Kentan on 12/03/11.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "VHTableViewCell.h"
#import "VHDataManagerSingleton.h"

@implementation VHTableViewCell
@synthesize webView;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier index:(NSInteger)row
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {

        if(row > [[VHDataManagerSingleton newInstance]countOfData] - 1){
            index = [[VHDataManagerSingleton newInstance] createNewData];            
        }else{
            index = row;
        }
        NSString *str = [[VHDataManagerSingleton newInstance]getData:index];
 

        webView = [[UIWebView alloc]initWithFrame:CGRectMake(0, 0, 280,1)];
        webView.autoresizingMask = UIViewAutoresizingFlexibleHeight|UIViewAutoresizingFlexibleWidth;
       [webView loadHTMLString:str baseURL:nil];           
                

        [self.contentView addSubview:webView];
        

        
    }
    return self;
}

-(void)drawRect:(CGRect)rect
{
    NSString *str = [[VHDataManagerSingleton newInstance]getData:index];
    [webView loadHTMLString:str baseURL:nil];
      NSLog(@":d::%f",webView.frame.size.height);
    CGRect frame = webView.bounds;
    double height = webView.scrollView.contentSize.height;
    frame.size.height = height;
    webView.frame = frame;    

    
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
