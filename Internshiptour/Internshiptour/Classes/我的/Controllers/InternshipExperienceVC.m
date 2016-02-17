//
//  InternshipExperienceVC.m
//  Internshiptour
//
//  Created by 赵雍丹 on 16/1/28.
//  Copyright © 2016年 dexiang lu. All rights reserved.
//

#import "InternshipExperienceVC.h"
#import "EducationExperienceCell.h"
#import "DirectInputCell.h"
#import "ExperienceDirVC.h"
@interface InternshipExperienceVC ()<UITableViewDataSource,UITableViewDelegate,UIPickerViewDelegate,UIPickerViewDataSource>
{
    NSArray *_leftArr;
    NSArray *_rightArr;
    UIPickerView *_maritalStatusPickerView;

}
@property (weak, nonatomic) IBOutlet UIView *fatherView;
@property (weak, nonatomic) IBOutlet UITableView *myInternShipExTableView;

@property (weak, nonatomic) IBOutlet UILabel *titlePickerLable;
@end

@implementation InternshipExperienceVC
-(instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    if(self=[super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])
    {
      _leftArr = [[NSArray alloc] init];
      _rightArr = [[NSArray alloc] init];
    }
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.navigationController.navigationBarHidden = YES;
    _myInternShipExTableView.backgroundColor = BACKCOLOR;
    _leftArr = @[@"开始时间",@"结束时间",@"实践名称",@"实践描述"];
    _rightArr = @[@"请选择开始时间",@"至今",@"请输入实践名称",@"请输入实践描述"];
    
    
    [_myInternShipExTableView registerNib:[UINib nibWithNibName:@"EducationExperienceCell" bundle:nil] forCellReuseIdentifier:@"EducationExperienceCell"];
    [_myInternShipExTableView registerNib:[UINib nibWithNibName:@"DirectInputCell" bundle:nil] forCellReuseIdentifier:@"DirectInputCell"];
    
    // 学历选择页面
    _maritalStatusPickerView = [[UIPickerView alloc] initWithFrame:CGRectMake(0, 44, self.view.frame.size.width, _fatherView.frame.size.height - 44)];
    _maritalStatusPickerView.delegate = self;
    [_fatherView addSubview:_maritalStatusPickerView];
    _maritalStatusPickerView.hidden = NO;

}
#pragma mark -------保存
- (IBAction)saveAction:(id)sender {
    
    
    
}
- (IBAction)goBack:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)cancelAction:(id)sender {

    _fatherView.hidden = YES;

}
- (IBAction)YesAction:(id)sender {
    
        _fatherView.hidden = YES;
}
#pragma mark ----------<UITableViewDataSource,UITableViewDelegate>
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 4;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.row == 2){
    
        DirectInputCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DirectInputCell"];
        cell.DirLeftLable.text = _leftArr[indexPath.row];
        cell.DirRightLable.placeholder = _rightArr[indexPath.row];
        return cell;
    }else {
    
        EducationExperienceCell *cell = [tableView dequeueReusableCellWithIdentifier:@"EducationExperienceCell"];
        cell.leftLable.text = _leftArr[indexPath.row];
        cell.rightLable.text = _rightArr[indexPath.row];
        return cell;
    }
   
    return nil;
    
    
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;

}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    if(indexPath.row == 2){
    
    
    }else if(indexPath.row == 3){
    
    
        ExperienceDirVC *dir = [[ExperienceDirVC alloc] initWithNibName:@"ExperienceDirVC" bundle:nil];
        [self.navigationController pushViewController:dir animated:YES];
    }
    else {
        _fatherView.hidden = NO;
        EducationExperienceCell *cell = (EducationExperienceCell *)[tableView cellForRowAtIndexPath:indexPath];
    _titlePickerLable.text = cell.rightLable.text;
    }

}
// 键盘落下,结束编辑
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}
-(void)scrollViewWillBeginDragging:(UIScrollView *)scrollView
{
    [self.view endEditing:YES];
}
#pragma mark-----UIPickerViewDataSource,UIPickerViewDelegate

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
            return 2;
  
}
-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    
        if (component == 0)
        {
            return [NSString stringWithFormat:@"%ld年",1970+row];
        }
        else
        {
            return [NSString stringWithFormat:@"%ld月",1+row];
        }



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
