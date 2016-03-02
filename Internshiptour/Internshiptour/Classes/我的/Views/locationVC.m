//
//  locationVC.m
//  Internshiptour
//
//  Created by 赵雍丹 on 16/1/27.
//  Copyright © 2016年 dexiang lu. All rights reserved.
//

#import "locationVC.h"
#import "FMDBManager.h"
#import "cityModel.h"
#import "cityCell.h"
#import "cityVC.h"
@interface locationVC ()<UITableViewDataSource,UITableViewDelegate>
{
    NSMutableArray *_locArr;

}
@property (weak, nonatomic) IBOutlet UITableView *myLocTableView;
@end

@implementation locationVC
-(instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    if(self=[super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])
    {
        _locArr = [[NSMutableArray alloc] init];
    }
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.navigationController.navigationBarHidden = YES;
    
    // 获取数据库
    
    
    [self loadDataFromDB];
    
   
    [_myLocTableView registerNib:[UINib nibWithNibName:@"cityCell" bundle:nil] forCellReuseIdentifier:@"cityCell"];
    
//    NSLog(@"NSHomeDirectory:%@",NSHomeDirectory());
    
}
// 从数据库导入数据
-(void)loadDataFromDB
{
      FMDBManager *manager = [FMDBManager shareInstance];
   
    FMResultSet *rs =  [manager.dataBase executeQuery:@"select * from ocenter_country"];
    while ([rs next])
    {
        cityModel *model = [[cityModel alloc]init];
        model.cityName = [rs stringForColumn:@"Name"];
        model.countryNum = [rs stringForColumn:@"Code"];

        [_locArr addObject:model];
    }

    NSLog(@"_locArr--%ld",_locArr.count);
}
- (IBAction)goBack:(id)sender {
    
    [self.navigationController popViewControllerAnimated:YES];
}
#pragma mark   ------------<UITableViewDataSource,UITableViewDelegate>-------

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _locArr.count;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    cityCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cityCell"];
    cityModel *model =_locArr[indexPath.row];
    cell.titleLable.text = model.cityName;
    return cell;
    
    
}
-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 44)];
    UILabel *lable = [[UILabel alloc] initWithFrame:CGRectMake(12, 0, 120, 30)];
    lable.text = @"选择国家";
    lable.textColor = [UIColor colorWithRed:132/255.0 green:133/255.0 blue:134/255.0 alpha:1.0];
    [view addSubview:lable];
    return view;
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;

}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 44.0f;

}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    cityModel *model =_locArr[indexPath.row];
    cityVC *city = [[cityVC alloc] initWithNibName:@"cityVC" bundle:nil];
    city.num = model.countryNum;
    city.name = model.cityName;

    [self.navigationController pushViewController:city animated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 30;

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
