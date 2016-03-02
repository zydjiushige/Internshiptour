//
//  majorDetailVC.m
//  Internshiptour
//
//  Created by 赵雍丹 on 16/1/28.
//  Copyright © 2016年 dexiang lu. All rights reserved.
//

#import "majorDetailVC.h"
#import "cityCell.h"
#import "EducationExperienceVC.h"
#import <Masonry/Masonry.h>
@interface majorDetailVC ()<UITableViewDataSource,UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *myMajorTableView;
@end

@implementation majorDetailVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    
    [_myMajorTableView registerNib:[UINib nibWithNibName:@"cityCell" bundle:nil] forCellReuseIdentifier:@"cityCell"];
}
- (IBAction)goBack:(id)sender {
    
    [self.navigationController popViewControllerAnimated:YES];
}
#pragma mark ---------<UITableViewDataSource,UITableViewDelegate>
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 2;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    cityCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cityCell"];
    
    cell.titleLable.text = @"哲学类";
    cell.accessoryType = UITableViewCellAccessoryNone;
    
    return cell;
    
    
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 10;

}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSUserDefaults *myDefault = [NSUserDefaults standardUserDefaults];
     cityCell *cell = (cityCell *)[tableView cellForRowAtIndexPath:indexPath];
    [myDefault setObject:cell.titleLable.text forKey:@"secondMajor"];
    NJLog(@"NSHomeDirectory%@",NSHomeDirectory());
    
    cell.selectedMajorState.hidden = NO; // 选择专业状态
    
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
