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
@interface EducationExperienceVC ()<UITableViewDataSource,UITableViewDelegate,UIScrollViewDelegate>
{
    NSArray *_leftTitleArr;
    NSArray *_rightTitleArr;


}
@property (weak, nonatomic) IBOutlet UITableView *myEduTableView;
@property (weak, nonatomic) IBOutlet UILabel *pikerTitleLable;
@property (weak, nonatomic) IBOutlet UIView *fatherView;
@end

@implementation EducationExperienceVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.navigationController.navigationBarHidden = YES;
    
    
    _leftTitleArr = [[NSArray alloc] init];
    _rightTitleArr = [[NSArray alloc] init];
    _leftTitleArr = @[@"入学时间",@"毕业时间",@"学校",@"学历",@"专业",@"专业描述"];
    _rightTitleArr = @[@"请选择入学时间",@"至今",@"请输入学校",@"请选择学历",@"请选择专业",@"请输入专业描述"];
    
    [_myEduTableView registerNib:[UINib nibWithNibName:@"EducationExperienceCell" bundle:nil] forCellReuseIdentifier:@"EducationExperienceCell"];
    [_myEduTableView registerNib:[UINib nibWithNibName:@"DirectInputCell" bundle:nil] forCellReuseIdentifier:@"DirectInputCell"];
    
    _myEduTableView.backgroundColor = [UIColor colorWithRed:241/255.0 green:242/255.0 blue:244/255.0 alpha:1.0];
    _myEduTableView.separatorStyle = NO;
}
- (IBAction)cancelAction:(id)sender {
}
- (IBAction)YesAction:(id)sender {
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
        return cell;
    }
   
    
    
    
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;

}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    

}

-(void)scrollViewWillBeginDragging:(UIScrollView *)scrollView
{
    [self.view endEditing:YES];
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
