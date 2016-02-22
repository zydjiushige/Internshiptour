//
//  userInfoVC.m
//  Internshiptour
//
//  Created by 赵雍丹 on 16/1/22.
//  Copyright © 2016年 dexiang lu. All rights reserved.
//

#import "userInfoVC.h"
#import "DirectInputCell.h"
#import "sexCell.h"
#import "InToVCCell.h"
#import "AppDelegate.h"
#import "tabBar.h"
#import "ExpectedIndustryVC.h"
#import "locationVC.h"
@interface userInfoVC ()<UITableViewDataSource,UITableViewDelegate,UIScrollViewDelegate,UIPickerViewDelegate,UIPickerViewDataSource>
{
    NSArray *_leftTitleArr;
    NSArray *_rightTitleArr;
    UIDatePicker *_date;
    UIPickerView *_maritalStatusPickerView;
    NSArray *_maritalStatusArr;
}
@property (weak, nonatomic) IBOutlet UILabel *titleLable;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *cancelButton;
@property (weak, nonatomic) IBOutlet UIButton *YesButton;
@property (weak, nonatomic) IBOutlet UIView *fatherView;
@end

@implementation userInfoVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    // 隐藏tabar,重新创建一个自定义tabbar
    AppDelegate *delegate = [UIApplication sharedApplication].delegate;
    UIWindow *window = delegate.window;
    tabBar *tabbar = (tabBar *)window.rootViewController;
    tabbar.tab.hidden = YES;
    
    
    self.navigationController.navigationBarHidden = YES;
    self.myUserInfoTableView.backgroundColor = [UIColor grayColor];

    _leftTitleArr = [[NSArray alloc] init];
    _rightTitleArr = [[NSArray alloc] init];
    _leftTitleArr = @[@"姓名",@"性别",@"出生日期",@"联系电话",@"邮箱",@"通讯地址",@"个人主页",@"婚姻状况",@"",@"期望行业",@"所在地",@"可实习时间"];
    _rightTitleArr =@[@"请输入姓名",@"",@"请选择出生日期",@"请输入联系电话",@"请填写邮箱",@"请填写通讯地址",@"请输入个人主页",@"请选择婚姻状况",@"",@"请选择期望行业",@"请选择所在地",@"请选择可实习时间"];
    _maritalStatusArr = @[@"保密",@"已婚",@"未婚"];
    
    [_myUserInfoTableView registerNib:[UINib nibWithNibName:@"DirectInputCell" bundle:nil] forCellReuseIdentifier:@"DirectInputCell"];
    [_myUserInfoTableView registerNib:[UINib nibWithNibName:@"sexCell" bundle:nil] forCellReuseIdentifier:@"sexCell"];
    [_myUserInfoTableView registerNib:[UINib nibWithNibName:@"InToVCCell" bundle:nil] forCellReuseIdentifier:@"InToVCCell"];

    _myUserInfoTableView.separatorStyle = NO;
    _myUserInfoTableView.backgroundColor = [UIColor colorWithRed:242/255.0 green:242/255.0 blue:242/255.0 alpha:1.0];
    
   // 选择页面开始隐藏
    _fatherView.hidden = YES;
    
    // 添加datePickerView
    _date= [[UIDatePicker alloc] initWithFrame:CGRectMake(0, 44, self.view.frame.size.width, _fatherView.frame.size.height - 44)];
    _date.datePickerMode = UIDatePickerModeDate;
    [_fatherView addSubview:_date];
    _date.hidden = YES;
    
    // 婚姻状况选择页面
    _maritalStatusPickerView = [[UIPickerView alloc] initWithFrame:CGRectMake(0, 44, self.view.frame.size.width, _fatherView.frame.size.height - 44)];
    _maritalStatusPickerView.delegate = self;
    [_fatherView addSubview:_maritalStatusPickerView];
    _maritalStatusPickerView.hidden = YES;
    
    
}
#pragma mark ----------性别选择事件




- (IBAction)goBack:(id)sender {
    
    
    
    [self.navigationController popViewControllerAnimated:YES];
}
// 确定
- (IBAction)YesAction:(id)sender {
    
    _fatherView.hidden = YES;
    
}
// 取消

- (IBAction)cancelAction:(id)sender {
    
    _fatherView.hidden = YES;
}
#pragma mark -----------<UITableViewDataSource,UITableViewDelegate>
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 12;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    // 可直接书写内容Cell
    if(indexPath.row == 0 || indexPath.row == 3 || indexPath.row == 4 || indexPath.row == 5 || indexPath.row == 6 ){
    
        DirectInputCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DirectInputCell"];
        cell.DirLeftLable.text = _leftTitleArr[indexPath.row];
        cell.DirRightLable.placeholder = _rightTitleArr[indexPath.row];
        return cell;
        
    }else if (indexPath.row == 2 || indexPath.row == 7 || indexPath.row == 9 || indexPath.row == 10 || indexPath.row == 11){
    
        // 进入二级页面书写内容Cell
        InToVCCell *cell = [tableView dequeueReusableCellWithIdentifier:@"InToVCCell"];
        cell.inToLable.text = _leftTitleArr [indexPath.row];
        cell.inToRightLable.text = _rightTitleArr[indexPath.row];
        return cell;
    }else if(indexPath.row == 1){
    
        // 选择性别的Cell
        sexCell *cell = [tableView dequeueReusableCellWithIdentifier:@"sexCell"];
//        [cell.secretButton addTarget:self action:@selector(secret ) forControlEvents:UIControlEventTouchUpInside];
//        [cell.womenButton addTarget:self action:@selector(woman) forControlEvents:UIControlEventTouchUpInside];
//        [cell.manButton addTarget:self action:@selector(man) forControlEvents:UIControlEventTouchUpInside];
        
        
        return cell;
    }else if (indexPath.row == 8){
    
    
    // 分割线
    
    
    static NSString *reusedID=@"reusedID";
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:reusedID];
    if(!cell)/////cell==nil
    {
        cell=[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reusedID];
        
        
    }
        cell.backgroundColor = [UIColor colorWithRed:242/255.0 green:242/255.0 blue:242/255.0 alpha:1.0];
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
    if(indexPath.row == 8){
    
        return 15.0f;
    }else{
    
        return 44.0f;
    
    }
    
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    _fatherView.hidden = YES;
    
    if(indexPath.row == 2){
         _fatherView.hidden = NO;
        _titleLable.text = @"出生日期";
        _date.hidden = NO;
        _maritalStatusPickerView.hidden = YES;
    }else if(indexPath.row == 7){
         _fatherView.hidden = NO;
        _titleLable.text = @"婚姻状况";
        _date.hidden = YES;
        _maritalStatusPickerView.hidden = NO;
    }else if(indexPath.row == 11){
        _fatherView.hidden = NO;
        _titleLable.text = @"可实习时间";
        _date.hidden = NO;
          _date.locale = [[NSLocale alloc] initWithLocaleIdentifier:@"zh_CN"];
        _maritalStatusPickerView.hidden = YES;
        
    }else if (indexPath.row == 9){
    
        // 跳转到选择期望行业页面
        ExpectedIndustryVC *exVC = [[ExpectedIndustryVC alloc] initWithNibName:@"ExpectedIndustryVC" bundle:nil];
        [self.navigationController pushViewController:exVC animated:YES];
    
    }else if(indexPath.row == 10){
        // 所在地
        locationVC *locVC = [[locationVC alloc] initWithNibName:@"locationVC" bundle:nil];
        [self.navigationController pushViewController:locVC animated:YES];
    
    }
    
   
}
#pragma mark -------scrollViewDelegate
-(void)scrollViewWillBeginDragging:(UIScrollView *)scrollView
{

    [self.view endEditing:YES];
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];

}
#pragma mark-----UIPickerViewDataSource,UIPickerViewDelegate

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}
-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
//    if (component == 0) {
//        _provinceName=[NSString stringWithFormat:@"%@",_dataArray[row][@"state"]];
//        return _provinceName;
//    }else {
//        _cityName=[NSString stringWithFormat:@"%@",_citiesArray[row]];
//        return _cityName;
//    }
    
    return _maritalStatusArr[row];
    
    
}
-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    
//    if (component == 0) {
//        _citiesArray = _dataArray[row][@"cities"];
//        [_addPickerView reloadComponent:1];
//    }
//
    NSLog(@"123");
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
//    if (component == 0) {
//        return _dataArray.count;
//    }else {
//        return _citiesArray.count;
//    }
    return _maritalStatusArr.count;
    
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
