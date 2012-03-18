//
//  VHTableViewController.h
//  SampleVariableHeightTableViewCell
//
//  Created by Kentan on 12/03/11.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VHTableViewController : UITableViewController
{
    NSMutableDictionary *cellDict;
}
-(void)setTableReloadTimer;
@end
