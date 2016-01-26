//
//  ExpectedIndustryVC.m
//  Internshiptour
//
//  Created by 赵雍丹 on 16/1/25.
//  Copyright © 2016年 dexiang lu. All rights reserved.
//

#import "ExpectedIndustryVC.h"
#import "ExpectedIndustryCell.h"
#import "headCellView.h"
@interface ExpectedIndustryVC ()<UITableViewDataSource,UITableViewDelegate>
{

    BOOL _isDown; // 是否点击下拉页面的按钮
    BOOL _isSelected; // 是否为选中状态
}
@end

@implementation ExpectedIndustryVC
-(instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    if(self=[super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])
    {
        _titleArr = [[NSMutableArray alloc] init];
    }
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    _isDown = YES; // 默认下拉页面为收起(YES)
    _isSelected = YES;
    
    _selectedView.hidden = YES;
    _tableViewConstraint.constant = 0;
    [_downOrUpButton setImage:[UIImage imageNamed:@"expected_industry_up_ic"] forState:UIControlStateNormal];
    
    
    // 注册cell
    [_myExpectedIndustryTableView registerNib:[UINib nibWithNibName:@"ExpectedIndustryCell" bundle:nil] forCellReuseIdentifier:@"ExpectedIndustryCell"];
    
    
}
#pragma mark ---------<UITableViewDataSource,UITableViewDelegate>
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
    
    ExpectedIndustryCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ExpectedIndustryCell"];
    cell.isSelected = YES;
    if(indexPath.section == 0 && indexPath.row == 0){
    
        cell.titleLable.text = @"123";
    }else if(indexPath.section == 1 && indexPath.row == 0){
    
    cell.titleLable.text = @"222";
    
    }else if (indexPath.section == 3 && indexPath.row == 0){
    
        cell.titleLable.text = @"555";
    }else if (indexPath.section == 2 && indexPath.row == 0){
    
        cell.titleLable.text = @"666";
    
    }
//    [cell.bigButton addTarget:self action:@selector(selected) forControlEvents:UIControlEventTouchUpInside];
    // 全选
//    if(_isSelected){
//        cell.boolSelectedButton.hidden = YES;
//    
//    }else{
//    
//        cell.boolSelectedButton.hidden = NO;
//    }
    return cell;
    
    
}
// 点击cell
//-(void)selected
//{
//    
//    NSLog(@"1");
//    _isSelected = !_isSelected;
//    
//    [_myExpectedIndustryTableView reloadData];
//}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 4;

}
-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{

    headCellView *view = [[NSBundle mainBundle] loadNibNamed:@"headCellView" owner:self options:nil][0];

    return view;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"1:%ld",_titleArr.count);
   
    ExpectedIndustryCell *cell = (ExpectedIndustryCell *)[tableView cellForRowAtIndexPath:indexPath];
    
    if(_titleArr.count <= 3){
        if(_titleArr.count < 3){
        
            if(![_titleArr containsObject:cell.titleLable.text]){
                
                [_titleArr addObject:cell.titleLable.text];
                 NSLog(@"2:%ld",_titleArr.count);
                
            }else{
                
                [_titleArr removeObject:cell.titleLable.text];
                cell.isSelected = !cell.isSelected;
               NSLog(@"_isSelected:::: value: %@" ,cell.isSelected?@"YES":@"NO");
                 NSLog(@"3:%ld",_titleArr.count);
            }

            NSLog(@"111");
        
        
        }else{
        
        
            
            if(![_titleArr containsObject:cell.titleLable.text]){
                
                UIAlertController *actionVC = [UIAlertController alertControllerWithTitle:@"够多了" message:@"超过三个了" preferredStyle:UIAlertControllerStyleAlert];
                UIAlertAction *action = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleCancel handler:nil];
                [actionVC addAction:action];
                [self presentViewController:actionVC animated:YES completion:nil];
                 NSLog(@"4:%ld",_titleArr.count);
                return;
                
            }else{
                
                [_titleArr removeObject:cell.titleLable.text];
                 NSLog(@"5:%ld",_titleArr.count);
                cell.isSelected = !cell.isSelected;
            }
        
        
        }
        
    
    }else{
    
    
        UIAlertController *actionVC = [UIAlertController alertControllerWithTitle:@"够多了" message:@"超过三个了" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *action = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleCancel handler:nil];
        [actionVC addAction:action];
        [self presentViewController:actionVC animated:YES completion:nil];
         NSLog(@"6:%ld",_titleArr.count);
        return;
    
    }
    if(cell.isSelected){
        
        cell.boolSelectedButton.hidden = NO;
    }else {
        cell.boolSelectedButton.hidden = YES;
        
    }
    NSLog(@"7:%ld",_titleArr.count);
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 40.0f;

}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{

    return 44.0f;
}
#pragma mark --------点击出现下拉页面
- (IBAction)downAction:(id)sender {
    
    _isDown = !_isDown;
    if(_isDown){
    
        _selectedView.hidden = YES;
        _tableViewConstraint.constant = 0;
        [_downOrUpButton setImage:[UIImage imageNamed:@"expected_industry_up_ic"] forState:UIControlStateNormal];
    }else {
    
        _selectedView.hidden = NO;
        _tableViewConstraint.constant = 70;
         [_downOrUpButton setImage:[UIImage imageNamed:@"expected_industry_down_ic"] forState:UIControlStateNormal];
    }
}
- (IBAction)goBack:(id)sender {
    
    
    [self.navigationController popViewControllerAnimated:YES];
    
    
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
