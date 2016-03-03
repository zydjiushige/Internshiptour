//
//  chooseInfoVC.m
//  Internshiptour
//
//  Created by 赵雍丹 on 16/2/29.
//  Copyright © 2016年 dexiang lu. All rights reserved.
//

#import "chooseInfoVC.h"
#import "nextButtonView.h"
#import "chooseServicePackVC.h"
#import "AppDelegate.h"
#import "tabBar.h"
#import "DirectInputCell.h"
#import "sexCell.h"
#import "InToVCCell.h"
@interface chooseInfoVC ()<UITableViewDataSource,UITableViewDelegate,UIScrollViewDelegate,UIPickerViewDelegate,UIPickerViewDataSource>
{
    NSArray * _leftArr;
    NSArray * _rightArr;
    UIDatePicker *_date;
}
@property (weak, nonatomic) IBOutlet UIView *fatherView;
@property (weak, nonatomic) IBOutlet UITableView *myChooseInfoTB;

@end

@implementation chooseInfoVC
-(instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    if(self=[super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])
    {
      _leftArr= [[NSArray alloc] init];
      _rightArr= [[NSArray alloc] init];
    }
    return self;
}
//-(void)viewWillAppear:(BOOL)animated
//{
//    // 隐藏tabar,重新创建一个自定义tabbar
//    AppDelegate *delegate = [UIApplication sharedApplication].delegate;
//    UIWindow *window = delegate.window;
//    tabBar *tabbar = (tabBar *)window.rootViewController;
//    tabbar.tab.hidden = NO;
//    
//}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    // 隐藏tabar,重新创建一个自定义tabbar
    AppDelegate *delegate = [UIApplication sharedApplication].delegate;
    UIWindow *window = delegate.window;
    tabBar *tabbar = (tabBar *)window.rootViewController;
    tabbar.tab.hidden = YES;

    
    NAVBARHIDDEN;
    _myChooseInfoTB.backgroundColor = CLEARCOLOR;
    self.view.backgroundColor = f5f5f5;
    
    _leftArr = @[@"姓名",@"性别",@"出生日期",@"联系电话",@"邮箱",@"学校",@"紧急联系人",@"联系电话"];
    _rightArr = @[@"请输入姓名",@"",@"请输入出生日期",@"请输入联系电话",@"请填写邮箱",@"学校",@"请填写紧急联系人",@"请输入联系电话"];
    [_myChooseInfoTB registerNib:[UINib nibWithNibName:@"DirectInputCell" bundle:nil] forCellReuseIdentifier:@"DirectInputCell"];
    [_myChooseInfoTB registerNib:[UINib nibWithNibName:@"sexCell" bundle:nil] forCellReuseIdentifier:@"sexCell"];
    
    [_myChooseInfoTB registerNib:[UINib nibWithNibName:@"InToVCCell" bundle:nil] forCellReuseIdentifier:@"InToVCCell"];
    // 选择页面开始隐藏
    _fatherView.hidden = YES;
    // 添加datePickerView
    _date= [[UIDatePicker alloc] initWithFrame:CGRectMake(0, 44, self.view.frame.size.width, _fatherView.frame.size.height - 44)];
    _date.datePickerMode = UIDatePickerModeDate;
    [_fatherView addSubview:_date];
}
- (IBAction)goBack:(id)sender {
    
    NAVBACK;
    
}
#pragma mark ------<UITableViewDataSource,UITableViewDelegate>
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 8;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.row == 0 || indexPath.row == 3 || indexPath.row == 4 || indexPath.row == 5 || indexPath.row == 6 || indexPath.row == 7){
    DirectInputCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DirectInputCell"];
        cell.DirLeftLable.text = _leftArr[indexPath.row];
        cell.DirRightLable.placeholder = _rightArr[indexPath.row];
        [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
    return cell;
    }else if(indexPath.row == 1){
        
        sexCell *cell = [tableView dequeueReusableCellWithIdentifier:@"sexCell"];
       
        [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
        return cell;
    }else if(indexPath.row == 2){
    
        InToVCCell *cell = [tableView dequeueReusableCellWithIdentifier:@"InToVCCell"];
        cell.inToLable.text = _leftArr[indexPath.row];
        cell.inToRightLable = _rightArr[indexPath.row];
        [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
        return cell;
    }
    return nil;
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;

}
// 去报名
-(UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
    nextButtonView *view = [[NSBundle mainBundle] loadNibNamed:@"nextButtonView" owner:self options:nil][0];
    [view.nextButton setTitle:@"去报名" forState:UIControlStateNormal];
    [view.nextButton addTarget:self action:@selector(nextClick) forControlEvents:UIControlEventTouchUpInside];
    
    return view;
}
////////// 下一步
-(void)nextClick
{
   
    chooseServicePackVC *packVC = [[chooseServicePackVC alloc] initWithNibName:@"chooseServicePackVC" bundle:nil];
    [self.navigationController pushViewController:packVC animated:YES];
}
-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 70.0f;
    
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    _fatherView.hidden = YES;
    
    if(indexPath.row == 2){
        _fatherView.hidden = NO;
        _date.hidden = NO;
       
    }


}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)scrollViewWillBeginDragging:(UIScrollView *)scrollView
{
    [self.view endEditing:YES];
}
- (IBAction)cancelAction:(id)sender {
    
    _fatherView.hidden = YES;
}
- (IBAction)doneAction:(id)sender {
    
    _fatherView.hidden = YES;
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
