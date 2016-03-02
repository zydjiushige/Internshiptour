//
//  cityVC.m
//  Internshiptour
//
//  Created by 赵雍丹 on 16/1/27.
//  Copyright © 2016年 dexiang lu. All rights reserved.
//

#import "cityVC.h"
#import "cityBModel.h"
#import "FMDBManager.h"
#import "cityCell.h"
@interface cityVC ()<UITableViewDataSource,UITableViewDelegate>
{
    NSMutableArray *_cityArr;

}
@property (weak, nonatomic) IBOutlet UITableView *myCityTableView;
@end

@implementation cityVC
-(instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    if(self=[super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])
    {
        _cityArr = [[NSMutableArray alloc] init];
    }
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    [self loadDataFromDB];
    NSLog(@"%ld",_cityArr.count);
    [_myCityTableView registerNib:[UINib nibWithNibName:@"cityCell" bundle:nil] forCellReuseIdentifier:@"cityCell"];
    
    _countryTitleLable.text = _name;
    
    NJLog(@"_num%@",_num);
    
    
}

// 从数据库加载数据
-(void)loadDataFromDB
{
    FMDBManager *manager = [FMDBManager shareInstance];
    FMResultSet *rs =  [manager.dataBase executeQuery:@"select * from ocenter_city where CountryCode=?",_num];
    while ([rs next])
    {
        cityBModel *model = [[cityBModel alloc]init];
        model.cityName = [rs stringForColumn:@"Name"];
      
        
        [_cityArr addObject:model];
    }
}
- (IBAction)goBack:(id)sender {
    
    
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark -------------<UITableViewDataSource,UITableViewDelegate>
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _cityArr.count;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    cityCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cityCell"];
    cityBModel *model =_cityArr[indexPath.row];
    cell.titleLable.text = model.cityName;
    cell.accessoryType = UITableViewCellAccessoryNone;
    return cell;
   
    
    
    
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;

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
