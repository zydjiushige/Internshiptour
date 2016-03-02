//
//  setUpResumeVC.m
//  Internshiptour
//
//  Created by 赵雍丹 on 16/1/22.
//  Copyright © 2016年 dexiang lu. All rights reserved.
//

#import "setUpResumeVC.h"
#import "setUpCell.h"
#import "userInfoVC.h"
#import "AppDelegate.h"
#import "tabBar.h"
#import "EducationExperienceVC.h"
#import "InternshipExperienceVC.h"
@interface setUpResumeVC ()<UITableViewDataSource,UITableViewDelegate>
{

    NSArray *_titleArr;

}
@end

@implementation setUpResumeVC
-(instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    if(self=[super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])
    {
        _titleArr = [[NSArray alloc] init];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    // 隐藏tabar,重新创建一个自定义tabbar
    AppDelegate *delegate = [UIApplication sharedApplication].delegate;
    UIWindow *window = delegate.window;
    tabBar *tabbar = (tabBar *)window.rootViewController;
    tabbar.tab.hidden = YES;
    
    
    _titleArr = [[NSArray alloc] init];
    _titleArr = @[@"",@"个人信息",@"教育经历",@"实习经历",@"",@"个人技能",@"自我评价"];
 
    self.navigationController.navigationBarHidden = YES;
    [_setUpTableView registerNib:[UINib nibWithNibName:@"setUpCell" bundle:nil] forCellReuseIdentifier:@"setUpCell"];
    
    
    _setUpTableView.backgroundColor = [UIColor colorWithRed:242/255.0 green:242/255.0 blue:242/255.0 alpha:1.0];
    _setUpTableView.separatorStyle = NO;
    
}
#pragma mark  ---------<UITableViewDataSource,UITableViewDelegate>
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 7;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    if(indexPath.row == 0){
    
        static NSString *reusedID=@"reusedID";
        UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:reusedID];
        if(!cell)/////cell==nil
        {
            cell=[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reusedID];
            
            
        }
        UILabel *lable = [[UILabel alloc] initWithFrame:CGRectMake(12, 10, 68, 21)];
        lable.text = @"基本信息";
        lable.font = [UIFont systemFontOfSize:15];
        lable.textColor = [UIColor colorWithRed:153/255.0 green:153/255.0 blue:153/255.0 alpha:1.0];
        [cell addSubview:lable];
        cell.backgroundColor = [UIColor clearColor];
        return cell;
    
    }else if(indexPath.row == 4){
    
        static NSString *reusedID=@"reusedIDD";
        UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:reusedID];
        if(!cell)/////cell==nil
        {
            cell=[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reusedID];
            
            
        }
        UILabel *lable = [[UILabel alloc] initWithFrame:CGRectMake(12, 10, 68, 21)];
        lable.text = @"其他信息";
        lable.font = [UIFont systemFontOfSize:15];
        lable.textColor = [UIColor colorWithRed:153/255.0 green:153/255.0 blue:153/255.0 alpha:1.0];
        [cell addSubview:lable];
        cell.backgroundColor = [UIColor clearColor];
        return cell;
        
    
    }else {
    
        
        setUpCell *cell = [tableView dequeueReusableCellWithIdentifier:@"setUpCell"];
        cell.setUptitleLable.text = _titleArr[indexPath.row];
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

    if(indexPath.row == 0 || indexPath.row == 4){
    
        return 33.0f;
    }else {
    
        return 44.0;
    
    }
    return 0.01f;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{

    if(indexPath.row == 1){
    
        userInfoVC *userVC = [[userInfoVC alloc] initWithNibName:@"userInfoVC" bundle:nil];
        
        [self.navigationController pushViewController:userVC animated:YES];
    
    }else if (indexPath.row == 2){
    
        EducationExperienceVC *eduVC = [[EducationExperienceVC alloc] initWithNibName:@"EducationExperienceVC" bundle:nil];
        [self.navigationController pushViewController:eduVC animated:YES];
        
    }else if (indexPath.row == 3 ){
    
        InternshipExperienceVC *internshipVC = [[InternshipExperienceVC alloc] initWithNibName:@"InternshipExperienceVC" bundle:nil];
        [self.navigationController pushViewController:internshipVC animated:YES];
    
    }

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)goBack:(id)sender {
    
    
    [self.navigationController popViewControllerAnimated:YES];
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
