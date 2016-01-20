//
//  WMTableViewController.m
//  WMPageController
//
//  Created by Mark on 15/6/13.
//  Copyright (c) 2015年 yq. All rights reserved.
//

#import "WMTableViewController.h"
#import "WMLoopView.h"
#import "WMPageConst.h"
#import "detailVC.h"
#import "tabBar.h"
#import "AppDelegate.h"
#import "InfoCell.h"
@interface WMTableViewController () <WMLoopViewDelegate>

@end

@implementation WMTableViewController
-(void)viewWillAppear:(BOOL)animated
{
    //主视图退出后,再次加载自定义系统tabbar
    AppDelegate *delegate = [UIApplication sharedApplication].delegate;
    
    UIWindow *window = delegate.window;
    tabBar *tabbar = (tabBar *)window.rootViewController;
    
    tabbar.tab.hidden = NO;
   
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.showsVerticalScrollIndicator = NO;
   
    NSArray *images = @[@"zoro.jpg",@"three.jpg",@"onepiece.jpg"];
    WMLoopView *loopView = [[WMLoopView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.width/1.8) images:images autoPlay:YES delay:10.0];
    loopView.delegate = self;
    self.tableView.tableHeaderView = loopView;
    self.tableView.rowHeight = 80;
    NSLog(@"%@", self.age);
    
    [self.tableView registerNib:[UINib nibWithNibName:@"InfoCell" bundle:nil] forCellReuseIdentifier:@"InfoCell"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 30;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

  
    InfoCell *cell = [tableView dequeueReusableCellWithIdentifier:@"InfoCell"];
    
    
    
    return cell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{

    return 120;

}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
//    [self.navigationController pushViewController:[WMTableViewController new] animated:YES];
    [self.navigationController pushViewController:[detailVC new] animated:YES];
}

- (void)dealloc {
    NSLog(@"%@ destroyed",[self class]);
}

@end
