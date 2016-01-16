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
#import "commentCell.h"
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
    [self.myTableView registerNib:[UINib nibWithNibName:@"commentCell" bundle:nil] forCellReuseIdentifier:@"commentCell"];
    self.view.backgroundColor = [UIColor purpleColor];
    
}
-(void)goBack
{

    [self.navigationController popViewControllerAnimated:YES];

}
#pragma mark------------<UITableViewDataSource,UITableViewDelegate>
-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.row == 0){
    
    firstCell *cell = [tableView dequeueReusableCellWithIdentifier:@"firstCell"];
        cell.backgroundColor = [UIColor redColor];
        // 添加返回主页面事件
        [cell.goBackButton addTarget:self action:@selector(goBack) forControlEvents:UIControlEventTouchUpInside];
    return cell;
    }else if(indexPath.section == 0&&indexPath.row == 1){
    
        secondCell *cell = [tableView dequeueReusableCellWithIdentifier:@"secondCell"];
        cell.backgroundColor = [UIColor blueColor];
        return cell;
    }else if(indexPath.row == 2){
    
        contentCell *cell = [tableView dequeueReusableCellWithIdentifier:@"contentCell"];
        cell.backgroundColor = [UIColor yellowColor];
        return cell;
    }else if (indexPath.row == 3){
    
        static NSString *reusedID=@"reusedID";
        UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:reusedID];
        if(!cell)/////cell==nil
        {
            cell=[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reusedID];
            
            
        }
        cell.backgroundColor = [UIColor grayColor];
        return cell;
    
    }else if (indexPath.row == 4){
        // 评论
        static NSString *reusedID=@"commentID";
        UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:reusedID];
        if(!cell)/////cell==nil
        {
            cell=[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reusedID];
            
            
        }
//        cell.backgroundColor = [UIColor grayColor];
        UILabel *lable = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 60, 20)];
        lable.text = @"评论";
        [cell addSubview:lable];
        return cell;

    
    }else {
    
        commentCell *cell = [tableView dequeueReusableCellWithIdentifier:@"commentCell"];
        
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

    return 9;

}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.row == 0){
    
        return 100;
    }else if(indexPath.row == 1){
    
        return 50;
    }else if(indexPath.row == 2){
        return 100;
    }else if(indexPath.row == 4){
    
        return 20;
    }else if (indexPath.row == 3){
    
        return 10;
    }
    return 90;
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
