//
//  detailVC.m
//  Internshiptour
//
//  Created by dexiang lu on 16/1/14.
//  Copyright © 2016年 dexiang lu. All rights reserved.
//

#import "detailVC.h"
#import "AppDelegate.h"
#import "tabBar.h"
#import "firstCell.h"
#import "secondCell.h"
#import "contentCell.h"
@interface detailVC ()<UITableViewDataSource,UITableViewDelegate,UIScrollViewDelegate>

@end

@implementation detailVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    // 隐藏tabar,重新创建一个自定义tabbar
    AppDelegate *delegate = [UIApplication sharedApplication].delegate;
    UIWindow *window = delegate.window;
    tabBar *tabbar = (tabBar *)window.rootViewController;
    tabbar.tab.hidden = YES;
    
    // 注册cell
    [self.myTableView registerNib:[UINib nibWithNibName:@"firstCell" bundle:nil] forCellReuseIdentifier:@"firstCell"];
    [self.myTableView registerNib:[UINib nibWithNibName:@"secondCell" bundle:nil] forCellReuseIdentifier:@"secondCell"];
    [self.myTableView registerNib:[UINib nibWithNibName:@"contentCell" bundle:nil] forCellReuseIdentifier:@"contentCell"];
    self.view.backgroundColor = [UIColor purpleColor];
    
}
#pragma mark------------<UITableViewDataSource,UITableViewDelegate>
-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.section == 0 && indexPath.row == 0){
    
    firstCell *cell = [tableView dequeueReusableCellWithIdentifier:@"firstCell"];
        cell.backgroundColor = [UIColor redColor];
    return cell;
    }else if(indexPath.section == 0&&indexPath.row == 1){
    
        secondCell *cell = [tableView dequeueReusableCellWithIdentifier:@"secondCell"];
        cell.backgroundColor = [UIColor blueColor];
        return cell;
    }else if(indexPath.row == 2){
    
        contentCell *cell = [tableView dequeueReusableCellWithIdentifier:@"contentCell"];
        cell.backgroundColor = [UIColor yellowColor];
        return cell;
    }
    return nil;
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{

    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    return 3;

}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.row == 0){
    
        return 200;
    }else if(indexPath.row == 1){
    
        return 80;
    }else if(indexPath.row == 2){
        return 150;
    }
    return 0.001;
}
#pragma mark --------UIScrollViewDelegate
-(void)scrollViewWillBeginDragging:(UIScrollView *)scrollView
{
    [self.view endEditing:YES];

}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
