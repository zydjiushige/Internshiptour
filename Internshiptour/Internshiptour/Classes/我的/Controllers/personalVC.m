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
@interface personalVC ()<UITableViewDataSource,UITableViewDelegate>
{
    NSArray *_imageArr;
    NSArray *_NameArr;

}
@end

@implementation personalVC


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
    
    _imageArr = @[@"",@"my_jifen_ic",@"my_resume_ic",@"",@"my_sq_ic",@"my_yq_ic",@"",@"my_set_ic",@""];
   
    _NameArr = @[@"",@"我的积分",@"我的简历",@"",@"我的申请",@"企业邀请",@"",@"设置",@""];
    [_myUserTableView registerNib:[UINib nibWithNibName:@"UserCell" bundle:nil] forCellReuseIdentifier:@"UserCell"];
    
}
#pragma mark  -----------<UITableViewDataSource,UITableViewDelegate>
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 9;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    if(indexPath.row == 0 || indexPath.row == 3 || indexPath.row == 6 || indexPath.row == 8 ){
    
        static NSString *reusedID=@"reusedID";
        UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:reusedID];
        if(!cell)/////cell==nil
        {
            cell=[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reusedID];
            
            
        }
    
        cell.backgroundColor = [UIColor colorWithRed:245/255.0 green:245/255.0 blue:245/255.0 alpha:1];
    
        return cell;
    }else if(indexPath.row == 1 || indexPath.row == 2 || indexPath.row == 4 || indexPath.row == 5 || indexPath.row == 7){
    
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
    if(indexPath.row == 1 || indexPath.row == 2 || indexPath.row == 4 || indexPath.row == 5 || indexPath.row == 7){
        return 44;
    
    }else if(indexPath.row == 0 || indexPath.row == 3 || indexPath.row == 6){
    
        
        return 20.0f;
    }
    CGFloat height = self.view.frame.size.height - 154 - 20*3 - 44*5;

    return height;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{

    if(indexPath.row == 5){
    
//        companyInviteVC *comVC = [[NSBundle mainBundle] loadNibNamed:@"companyInviteVC" owner:self options:nil][0];
        companyInviteVC *comVC = [[companyInviteVC alloc] initWithNibName:@"companyInviteVC" bundle:nil];
        [self.navigationController pushViewController:comVC animated:YES];
    
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
