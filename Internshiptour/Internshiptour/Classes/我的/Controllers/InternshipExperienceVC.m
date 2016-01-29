//
//  InternshipExperienceVC.m
//  Internshiptour
//
//  Created by 赵雍丹 on 16/1/28.
//  Copyright © 2016年 dexiang lu. All rights reserved.
//

#import "InternshipExperienceVC.h"

@interface InternshipExperienceVC ()<UITableViewDataSource,UITableViewDelegate>
{
    NSArray *_leftArr;
    NSArray *_rightArr;

}
@property (weak, nonatomic) IBOutlet UITableView *myInternShipExTableView;

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
}
#pragma mark -------保存
- (IBAction)saveAction:(id)sender {
}
- (IBAction)goBack:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

#pragma mark ----------<UITableViewDataSource,UITableViewDelegate>
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 4;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *reusedID=@"reusedID";
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:reusedID];
    if(!cell)/////cell==nil
    {
        cell=[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reusedID];
        
        
    }
   
    return cell;
    
    
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;

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
