//
//  personalVC.m
//  Internshiptour
//
//  Created by dexiang lu on 16/1/13.
//  Copyright © 2016年 dexiang lu. All rights reserved.
//

#import "personalVC.h"
#import "UserCell.h"
#import "companyInviteVC.h"
#import "myInviteVC.h"
#import "myResumeVC.h"
#import "AppDelegate.h"
#import "tabBar.h"
#import "loginVC.h"
#import "settingVC.h"
@interface personalVC ()<UITableViewDataSource,UITableViewDelegate>
{
    NSArray *_imageArr;
    NSArray *_NameArr;

}
@property (weak, nonatomic) IBOutlet UIButton *levelButton;

@end

@implementation personalVC
-(void)viewWillAppear:(BOOL)animated
{
    //主视图退出后,再次加载自定义系统tabbar
    AppDelegate *delegate = [UIApplication sharedApplication].delegate;
    
    UIWindow *window = delegate.window;
    tabBar *tabbar = (tabBar *)window.rootViewController;
    
    tabbar.tab.hidden = NO;
    
}

-(instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    if(self=[super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])
    {
      _imageArr = [[NSArray alloc] init];
         _NameArr = [[NSArray alloc] init];
    }
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.navigationController.navigationBar.hidden = YES;
    
    // 图片数组
    
    _imageArr = @[@"",@"my_jifen_ic",@"my_resume_ic",@"my_resume_order_ic",@"",@"my_sq_ic",@"my_yq_ic",@"",@"my_set_ic",@""];
   
    _NameArr = @[@"",@"我的积分",@"我的简历",@"我的订单",@"",@"我的申请",@"企业邀请",@"",@"设置",@""];
    [_myUserTableView registerNib:[UINib nibWithNibName:@"UserCell" bundle:nil] forCellReuseIdentifier:@"UserCell"];
    
}
#pragma mark -------登陆事件
- (IBAction)loginAction:(id)sender {
    
    loginVC *logVC = [[loginVC alloc] initWithNibName:@"loginVC" bundle:nil];
    [self.navigationController pushViewController:logVC animated:YES];
    
}
#pragma mark  -----------<UITableViewDataSource,UITableViewDelegate>
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    if(indexPath.row == 0 || indexPath.row == 4 || indexPath.row == 7 || indexPath.row == 9 ){
    
        static NSString *reusedID=@"reusedID";
        UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:reusedID];
        if(!cell)/////cell==nil
        {
            cell=[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reusedID];
            
            
        }
    
        cell.backgroundColor = [UIColor colorWithRed:245/255.0 green:245/255.0 blue:245/255.0 alpha:1];
    
        return cell;
    }else if(indexPath.row == 1 || indexPath.row == 2 || indexPath.row == 3 || indexPath.row == 5 || indexPath.row == 6 || indexPath.row == 8){
    
        UserCell *cell = [tableView dequeueReusableCellWithIdentifier:@"UserCell"];
        
        cell.userInfoName.text = _NameArr[indexPath.row];
        cell.userImage.image = [UIImage imageNamed:_imageArr[indexPath.row]];
        return cell;
    }
    
    
    return nil;
    
    
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;

}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.row == 1 || indexPath.row == 2 || indexPath.row == 3 || indexPath.row == 5 || indexPath.row == 6 || indexPath.row == 8){
        return 44;
    
    }else if(indexPath.row == 0 || indexPath.row == 4 || indexPath.row == 7){
    
        
        return 20.0f;
    }
    CGFloat height = self.view.frame.size.height - 154 - 20*3 - 44*5;

    return height;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{

    if(indexPath.row == 6){
    
//        companyInviteVC *comVC = [[NSBundle mainBundle] loadNibNamed:@"companyInviteVC" owner:self options:nil][0];
        companyInviteVC *comVC = [[companyInviteVC alloc] initWithNibName:@"companyInviteVC" bundle:nil];
        [self.navigationController pushViewController:comVC animated:YES];
    
    }else if (indexPath.row == 5){
    
        myInviteVC *myVC = [[myInviteVC alloc] initWithNibName:@"myInviteVC" bundle:nil];
        [self.navigationController pushViewController:myVC animated:YES];

    }else if (indexPath.row == 2){
    
        
        myResumeVC * myResume = [[myResumeVC alloc] initWithNibName:@"myResumeVC" bundle:nil];
        [self.navigationController pushViewController:myResume animated:YES];
    }else if(indexPath.row == 8){
    
    
        settingVC *setVC = [[settingVC alloc] initWithNibName:@"settingVC" bundle:nil];
        [self.navigationController pushViewController:setVC animated:YES];
    }


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
