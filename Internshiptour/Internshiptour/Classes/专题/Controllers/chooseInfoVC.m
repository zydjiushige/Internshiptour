//
//  chooseInfoVC.m
//  Internshiptour
//
//  Created by 赵雍丹 on 16/2/29.
//  Copyright © 2016年 dexiang lu. All rights reserved.
//

#import "chooseInfoVC.h"
#import "nextButtonView.h"
#import "chooseServicePackVC.h"
#import "AppDelegate.h"
#import "tabBar.h"
@interface chooseInfoVC ()<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *myChooseInfoTB;

@end

@implementation chooseInfoVC
-(void)viewWillAppear:(BOOL)animated
{
    // 隐藏tabar,重新创建一个自定义tabbar
    AppDelegate *delegate = [UIApplication sharedApplication].delegate;
    UIWindow *window = delegate.window;
    tabBar *tabbar = (tabBar *)window.rootViewController;
    tabbar.tab.hidden = NO;
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    NAVBARHIDDEN;
    _myChooseInfoTB.backgroundColor = CLEARCOLOR;
    self.view.backgroundColor = f5f5f5;
    
}
- (IBAction)goBack:(id)sender {
    
    NAVBACK;
    
}
#pragma mark ------<UITableViewDataSource,UITableViewDelegate>
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 2;
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
-(UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
    nextButtonView *view = [[NSBundle mainBundle] loadNibNamed:@"nextButtonView" owner:self options:nil][0];
    [view.nextButton setTitle:@"去报名" forState:UIControlStateNormal];
    [view.nextButton addTarget:self action:@selector(nextClick) forControlEvents:UIControlEventTouchUpInside];
    
    return view;
}
////////// 下一步
-(void)nextClick
{
   
    chooseServicePackVC *packVC = [[chooseServicePackVC alloc] initWithNibName:@"chooseServicePackVC" bundle:nil];
    [self.navigationController pushViewController:packVC animated:YES];
}
-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 70.0f;
    
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
