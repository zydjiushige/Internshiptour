//
//  majorVC.m
//  Internshiptour
//
//  Created by 赵雍丹 on 16/1/28.
//  Copyright © 2016年 dexiang lu. All rights reserved.
//

#import "majorVC.h"
#import "cityCell.h"
#import "majorDetailVC.h"
@interface majorVC ()<UITableViewDelegate,UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *myMajorTableView;
@end

@implementation majorVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
     [_myMajorTableView registerNib:[UINib nibWithNibName:@"cityCell" bundle:nil] forCellReuseIdentifier:@"cityCell"];
    
    
}
- (IBAction)goBack:(id)sender {
    
    [self.navigationController popViewControllerAnimated:YES];
}

#pragma mark --------<UITableViewDelegate,UITableViewDataSource>
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 2;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    cityCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cityCell"];
   
    cell.titleLable.text = @"哲学类";
    NSUserDefaults *myDefault = [NSUserDefaults standardUserDefaults];
    [myDefault setObject:cell.titleLable.text forKey:@"firstMajor"];
    return cell;
    
    
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    majorDetailVC *detail = [[majorDetailVC alloc] initWithNibName:@"majorDetailVC" bundle:nil];
    detail.titleName = @"哲学类";
    [self.navigationController pushViewController:detail animated:YES];

}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 10;

}
-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 44)];
    UILabel *lable = [[UILabel alloc] initWithFrame:CGRectMake(12, 0, 120, 30)];
    lable.text = @"哲学类";
    lable.textColor = [UIColor colorWithRed:132/255.0 green:133/255.0 blue:134/255.0 alpha:1.0];
    [view addSubview:lable];
    return view;
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
