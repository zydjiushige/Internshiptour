//
//  FMDBManager.m
//  2.FMDB缓存APP数据
//
//  Created by liuyuecheng on 15/8/21.
//  Copyright (c) 2015年 liuyuecheng. All rights reserved.
//

#import "FMDBManager.h"

@implementation FMDBManager

+ (instancetype)shareInstance
{
    static FMDBManager *manager = nil;
    
    @synchronized(self)
    {
        if (manager == nil)
        {
            manager = [[FMDBManager alloc]init];
        }
    }
    
    return manager;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        //初始化数据库
        NSString *filePath = [NSHomeDirectory() stringByAppendingString:@"/Documents/loc.db"];
        NSLog(@"filePath==%@",filePath);
        
        //有数据库就读取,没有就创建
        self.dataBase = [FMDatabase databaseWithPath:filePath];
        if (![self.dataBase open])
        {
            NSLog(@"数据库打开失败");
        }
        
        if (![self.dataBase executeUpdate:@"create table if not exists ocenter_city(id integer primary key autoincrement,Name text,CountryCode text,District text,Population text)"])
        {
            NSLog(@"创建表失败");
        }
        
    }
    return self;
}
@end
