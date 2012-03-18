//
//  VHTDataManagerFactory.h
//  SampleVariableHeightTableViewCell
//
//  Created by Kentan on 12/03/11.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "VHDataManager.h"

@interface VHDataManagerSingleton : NSObject
{
//    VHDataManager *manager;
    NSMutableArray *dataArray;
    

}
+(VHDataManagerSingleton*)newInstance;
-(NSInteger)createNewData;
-(id)getData:(NSInteger)index;
-(NSInteger)countOfData;
@end
