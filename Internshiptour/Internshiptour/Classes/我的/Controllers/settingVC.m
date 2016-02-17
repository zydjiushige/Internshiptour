//
//  settingVC.m
//  Internshiptour
//
//  Created by 赵雍丹 on 16/2/16.
//  Copyright © 2016年 dexiang lu. All rights reserved.
//

#import "settingVC.h"
#import "InToVCCell.h"
#import "loginOutCell.h"
#import "personalDataVC.h"
@interface settingVC ()<UITableViewDataSource,UITableViewDelegate>
{
    NSArray *_leftTitleArr;

}
@property (weak, nonatomic) IBOutlet UITableView *mySetTableView;
@end

@implementation settingVC
-(instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    if(self=[super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])
    {
      _leftTitleArr = [[NSArray alloc] init];

    }
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    _mySetTableView.backgroundColor = BACKCOLOR;
    
    [_mySetTableView registerNib:[UINib nibWithNibName:@"InToVCCell" bundle:nil] forCellReuseIdentifier:@"InToVCCell"];
    [_mySetTableView registerNib:[UINib nibWithNibName:@"loginOutCell" bundle:nil] forCellReuseIdentifier:@"loginOutCell"];
    _leftTitleArr = @[@"",@"个人资料",@"",@"修改密码",@"关于我们",@"设置语言"];
    
}
- (IBAction)goBack:(id)sender {
    
    [self.navigationController popViewControllerAnimated:YES];
}
#pragma mark ---------<UITableViewDataSource,UITableViewDelegate>
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 8;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    if(indexPath.row == 0 || indexPath.row == 2 || indexPath.row == 6){
        // 空白cell
    static NSString *reusedID=@"reusedID";
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:reusedID];
    if(!cell)/////cell==nil
    {
        
        cell=[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reusedID];
        
        
    }
        cell.backgroundColor = [UIColor clearColor];
    return cell;
    }else if (indexPath.row == 1 || indexPath.row == 3 || indexPath.row == 4 || indexPath.row == 5){
    // 带内容cell
        InToVCCell *cell = [tableView dequeueReusableCellWithIdentifier:@"InToVCCell"];
        cell.inToRightLable.hidden = YES;
        cell.inToLable.text = _leftTitleArr[indexPath.row];
        UIView *downLine = [[UIView alloc] initWithFrame:CGRectMake(12, cell.frame.size.height, self.view.frame.size.width - 12, 1)];
        downLine.backgroundColor = dfdfddColor;
        [cell addSubview:downLine];
        if(indexPath.row == 5 || indexPath.row == 1){
            downLine.frame = CGRectMake(0, cell.frame.size.height, self.view.frame.size.width - 12, 1);
        
        }
        
        return cell;
    
    }else if(indexPath.row == 7){
            // 退出登录cell
    
        loginOutCell *cell = [tableView dequeueReusableCellWithIdentifier:@"loginOutCell"];
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
    if(indexPath.row == 0 || indexPath.row == 2 || indexPath.row == 6){
    
        return 15.0f;
    }else{
    
        return 44.0f;
    }


}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.row == 1){
        personalDataVC *perDVC = [[personalDataVC alloc] initWithNibName:@"personalDataVC" bundle:nil];
        [self.navigationController pushViewController:perDVC animated:YES];
    
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
