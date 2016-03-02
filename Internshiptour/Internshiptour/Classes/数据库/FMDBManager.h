//
//  FMDBManager.h
//  2.FMDB缓存APP数据
//
//  Created by liuyuecheng on 15/8/21.
//  Copyright (c) 2015年 liuyuecheng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FMDatabase.h"

@interface FMDBManager : NSObject


@property (nonatomic,strong)FMDatabase *dataBase;

+ (instancetype)shareInstance;
@end
