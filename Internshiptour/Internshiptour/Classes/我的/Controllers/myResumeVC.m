//
//  myResumeVC.m
//  Internshiptour
//
//  Created by 赵雍丹 on 16/1/22.
//  Copyright © 2016年 dexiang lu. All rights reserved.
//

#import "myResumeVC.h"
#import "myResumeCell.h"
#import "setUpResumeVC.h"
#import "AppDelegate.h"
#import "tabBar.h"
#import "checkResumeVC.h"
@interface myResumeVC ()<UITableViewDelegate,UITableViewDataSource,UIScrollViewDelegate,UIGestureRecognizerDelegate>
{
    UIImageView *_paopaoView;
    UIButton *_paopaoButton;
    NSArray *_titleArr;
    NSArray *_imgArr;
}
@end

@implementation myResumeVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    // 隐藏tabar,重新创建一个自定义tabbar
    AppDelegate *delegate = [UIApplication sharedApplication].delegate;
    UIWindow *window = delegate.window;
    tabBar *tabbar = (tabBar *)window.rootViewController;
    tabbar.tab.hidden = YES;
    
    
    self.navigationController.navigationBarHidden = YES;
    
    
    [_myResumeTableView registerNib:[UINib nibWithNibName:@"myResumeCell" bundle:nil] forCellReuseIdentifier:@"myResumeCell"];
    _myResumeTableView.backgroundColor = [UIColor colorWithRed:242/255.0 green:242/255.0 blue:242/255.0 alpha:1.0];
    _myResumeTableView.separatorStyle = NO;
    
    
    
    _paopaoView= [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 296, 105)];
    
    _paopaoView.image = [UIImage imageNamed:@"my_resume_down_bj"];
    [self.view addSubview:_paopaoView];
    _paopaoView.hidden = YES;
    _paopaoView.userInteractionEnabled = YES;
    _titleArr = [[NSArray alloc]init];
    _imgArr = [[NSArray alloc] init];
    
    _titleArr = @[@"查看",@"编辑",@"刷新",@"公开程度",@"删除",@"默认简历"];
    

    _paopaoButton = [UIButton buttonWithType:UIButtonTypeSystem];

    // 在气泡上添加6个button
    for(int i =0 ; i < 2 ; i++){
        
        for(int j = 0 ; j<3 ;j++){
        UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
            button.frame = CGRectMake(j*(296/3), (105/2) * i, 296/3, 105/2) ;
            button.tag = 100 + i *3 + j;
           [ button setTitle:_titleArr[i*3+j]  forState:UIControlStateNormal];
            [_paopaoView addSubview:button];
            
        [button addTarget:self action:@selector(clickButton:) forControlEvents:UIControlEventTouchUpInside];
            
    
        }
    
    }
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(hidePop)];
    tap.delegate = self;
    tap.numberOfTouchesRequired = 1;
    
    [self.view addGestureRecognizer:tap];
}
-(void)hidePop
{
    _paopaoView.hidden = YES;

}
-(BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch
{
//    if(NSStringFromClass([touch.view Class]) )
    NJLog(@"%@",NSStringFromClass([touch.view class]));
    
    if([NSStringFromClass([touch.view class]) isEqualToString:@"UITableViewCellContentView"])
    {
    
        return NO;
    }
    return YES;
}
-(void)clickButton:(UIButton *)button
{
//    UIButton *button1 = (UIButton *)[self.view viewWithTag:button.tag];

    NJLog(@"点击了:%ld",button.tag);
    
    if(button.tag == 100){
        checkResumeVC *checkVC = [[checkResumeVC alloc] initWithNibName:@"checkResumeVC" bundle:nil];
        
        [self.navigationController pushViewController:checkVC animated:YES];
    
    }
    
    
}
- (IBAction)goBack:(id)sender {
    
    
    
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark -------创建简历
- (IBAction)setUpResume:(id)sender {

    setUpResumeVC *setUp = [[setUpResumeVC alloc] initWithNibName:@"setUpResumeVC" bundle:nil];
    [self.navigationController pushViewController:setUp animated:YES];

}
#pragma mark -----------<UITableViewDelegate,UITableViewDataSource>
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    myResumeCell *cell = [tableView dequeueReusableCellWithIdentifier:@"myResumeCell"];
    if(indexPath.section == 0){
    
        cell.resumeFirst.hidden = NO;
        
        
    
    }else{
    
        cell.resumeFirst.hidden = YES;
    }
    cell.resumeNum.text = [NSString stringWithFormat:@"【简历%ld】",indexPath.section +1];
    return cell;
    
    
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 3;

}
-(UIView *) tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 10)];
    view.backgroundColor = [UIColor clearColor];
    return view;

}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 44.0f;

}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 10.0;

}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{

    _paopaoView.hidden = YES;
    CGFloat y = (indexPath.section+1) * 54 + 64 ;
    _paopaoView.frame = CGRectMake(10,y , 296, 105);
    
    _paopaoView.hidden = NO;
    
    NJLog(@"%ld",indexPath.section);

}

#pragma mark -------UIScrollViewDelegate
-(void)scrollViewWillBeginDragging:(UIScrollView *)scrollView
{
    _paopaoView.hidden = YES;

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
