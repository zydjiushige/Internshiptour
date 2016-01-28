//
//  EducationExperienceVC.m
//  Internshiptour
//
//  Created by 赵雍丹 on 16/1/26.
//  Copyright © 2016年 dexiang lu. All rights reserved.
//

#import "EducationExperienceVC.h"
#import "EducationExperienceCell.h"
#import "DirectInputCell.h"
#import "majorVC.h"
#import "majorDescribeVC.h"
@interface EducationExperienceVC ()<UITableViewDataSource,UITableViewDelegate,UIScrollViewDelegate,UIPickerViewDataSource,UIPickerViewDelegate>
{
    NSArray *_leftTitleArr;
    NSArray *_rightTitleArr;
    UIPickerView *_maritalStatusPickerView;
    NSArray *_maritalStatusArr;
    NSString *_dateOrOther; // 判断点击的是毕业时间还是学历

}


@property (weak, nonatomic) IBOutlet UILabel *pikerTitleLable;
@property (weak, nonatomic) IBOutlet UIView *fatherView;
@end

@implementation EducationExperienceVC
-(void)viewWillAppear:(BOOL)animated
{
    
    // 从子页面选择完后,刷新主页面,重新加载选择的信息
    [_myEduTableView reloadData];

}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.navigationController.navigationBarHidden = YES;
    
    _dateOrOther = @"date"; // 默认为空
    
    _leftTitleArr = [[NSArray alloc] init];
    _rightTitleArr = [[NSArray alloc] init];
    _leftTitleArr = @[@"入学时间",@"毕业时间",@"学校",@"学历",@"专业",@"专业描述"];
    _rightTitleArr = @[@"请选择入学时间",@"至今",@"请输入学校",@"请选择学历",@"请选择专业",@"请输入专业描述"];
    
    [_myEduTableView registerNib:[UINib nibWithNibName:@"EducationExperienceCell" bundle:nil] forCellReuseIdentifier:@"EducationExperienceCell"];
    [_myEduTableView registerNib:[UINib nibWithNibName:@"DirectInputCell" bundle:nil] forCellReuseIdentifier:@"DirectInputCell"];
    
    _myEduTableView.backgroundColor = [UIColor colorWithRed:241/255.0 green:242/255.0 blue:244/255.0 alpha:1.0];
    _myEduTableView.separatorStyle = NO;
    
    
    // 选择页面开始隐藏
    _fatherView.hidden = YES;
    

    
    // 学历选择页面
    _maritalStatusPickerView = [[UIPickerView alloc] initWithFrame:CGRectMake(0, 44, self.view.frame.size.width, _fatherView.frame.size.height - 44)];
    _maritalStatusPickerView.delegate = self;
    [_fatherView addSubview:_maritalStatusPickerView];
    _maritalStatusPickerView.hidden = YES;

    _maritalStatusArr = @[@"专科",@"本科",@"研究生"];
    
    
    
    
}
- (IBAction)cancelAction:(id)sender {
    
    _fatherView.hidden = YES;
}
- (IBAction)YesAction:(id)sender {
    _fatherView.hidden = YES;
}
#pragma mark --------<UITableViewDataSource,UITableViewDelegate>
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 6;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.row == 2){
        DirectInputCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DirectInputCell"];
        cell.DirLeftLable.text = _leftTitleArr[indexPath.row];
        cell.DirRightLable.placeholder = _rightTitleArr[indexPath.row];
        cell.accessoryType = UITableViewCellAccessoryNone;
        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(13, cell.frame.size.height, self.view.frame.size.width, 1)];
        view.backgroundColor = [UIColor colorWithRed:241/255.0 green:242/255.0 blue:244/255.0 alpha:1.0];
        [cell addSubview:view];
        return cell;
    }else{
    EducationExperienceCell *cell = [tableView dequeueReusableCellWithIdentifier:@"EducationExperienceCell"];
        
        cell.leftLable.text = _leftTitleArr[indexPath.row];
        cell.rightLable.text = _rightTitleArr[indexPath.row];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        NSUserDefaults *myDefault = [NSUserDefaults standardUserDefaults];
        NSString *first = [myDefault objectForKey:@"firstMajor"];
        NSString *second = [myDefault objectForKey:@"secondMajor"];
        if(indexPath.row == 4){
        if([first isEqualToString:@""]|| [second isEqualToString:@""]){
            
            cell.rightLable.text = _rightTitleArr[indexPath.row];
        
        }else{
        
            cell.rightLable.text = [NSString stringWithFormat:@"%@,%@",first,second];
           
        }
        }
        
        return cell;
    }
   
    
    
    
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;

}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    _fatherView.hidden = YES;
    
    if(indexPath.row == 0){
        _fatherView.hidden = NO;
        _pikerTitleLable.text = @"入学时间";
        _dateOrOther = @"date";
        _maritalStatusPickerView.hidden = NO;
        [_maritalStatusPickerView reloadAllComponents];
        
    }else if(indexPath.row == 3){
        _fatherView.hidden = NO;
        _pikerTitleLable.text = @"学历";
        _maritalStatusPickerView.hidden = NO;
        _dateOrOther = @"xueli";
        [_maritalStatusPickerView reloadAllComponents];
      
    }else if(indexPath.row == 1){
        _fatherView.hidden = NO;
        _pikerTitleLable.text = @"毕业时间";
        _maritalStatusPickerView.hidden = NO;
        _dateOrOther = @"date";
        
        [_maritalStatusPickerView reloadAllComponents];
    }
        else if (indexPath.row == 4){

            // 进入选择专业页面
        majorVC *major = [[majorVC alloc] initWithNibName:@"majorVC" bundle:nil];
        [self.navigationController pushViewController:major animated:YES];
        }else if(indexPath.row == 5){
        
            majorDescribeVC *majorDeVC = [[majorDescribeVC alloc] initWithNibName:@"majorDescribeVC" bundle:nil];
            [self.navigationController pushViewController:majorDeVC animated:YES];
        }
    

}

-(void)scrollViewWillBeginDragging:(UIScrollView *)scrollView
{
    [self.view endEditing:YES];
}
#pragma mark-----UIPickerViewDataSource,UIPickerViewDelegate

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    if([_dateOrOther isEqualToString:@"date"]){
    
        return 2;
    }else if([_dateOrOther isEqualToString:@"xueli"]){
    
    return 1;
    }
    return  1;
}
-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    if([_dateOrOther isEqualToString:@"date"]){
    
        
            if (component == 0)
            {
                return [NSString stringWithFormat:@"%ld年",1970+row];
            }
            else
            {
                return [NSString stringWithFormat:@"%ld月",1+row];
            }
        }

else if([_dateOrOther isEqualToString:@"xueli"]){
    return _maritalStatusArr[row];
    
    }
    return @"1";
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
    if([_dateOrOther isEqualToString:@"date"]){
        if (component == 0)
        {
            NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
            [formatter setDateFormat:@"yyyy"];
            return [[formatter stringFromDate:[NSDate date]] intValue]-1970+1;//从1970年开始
        }
        else
        {
            return 12;
        }
    
    }else if([_dateOrOther isEqualToString:@"xueli"]){
    return _maritalStatusArr.count;
    }
    
    return 1;
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
