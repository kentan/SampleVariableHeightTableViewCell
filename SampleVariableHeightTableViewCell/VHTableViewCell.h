//
//  VHTableViewCell.h
//  SampleVariableHeightTableViewCell
//
//  Created by Kentan on 12/03/11.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VHTableViewCell : UITableViewCell
{
    UIWebView *webView;
    NSInteger index;
}
@property (readwrite,retain) UIWebView *webView;
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier index:(NSInteger)row;

@end
