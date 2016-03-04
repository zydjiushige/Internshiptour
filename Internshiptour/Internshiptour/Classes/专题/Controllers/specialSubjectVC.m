//
//  specialSubjectVC.m
//  Internshiptour
//
//  Created by dexiang lu on 16/1/13.
//  Copyright © 2016年 dexiang lu. All rights reserved.
//

#import "specialSubjectVC.h"
#import "DVSwitch.h"
#import <NYSegmentedControl/NYSegmentedControl.h>
#import "MainTitleView.h"
#import "internshipInfoCell.h"
#import "InternshipProcessCell.h"
#import "movieCell.h"
#import "pastVC.h"
#import "chooseJobVC.h"
#import "AppDelegate.h"
#import "tabBar.h"
#import "shoppingCartVC.h"
@interface specialSubjectVC ()<UITableViewDataSource,UITableViewDelegate>
{
    NSArray *_titleArr;
    NSArray *_imageArr;
    NSArray *_titleRArr;
    NSArray *_imageRArr;
    NSString * _whichMain;
}
@property (nonatomic, strong) UIButton *btn;
@property (weak, nonatomic) IBOutlet UIView *topBackView;
@property (weak, nonatomic) IBOutlet UIButton *signUpButton;
@property (weak, nonatomic) IBOutlet UITableView *mySpecialTableView;
@end

@implementation specialSubjectVC
-(instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    if(self=[super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])
    {
      _imageArr = [[NSArray alloc] init];
         _titleArr = [[NSArray alloc] init];
        _titleRArr =[[NSArray alloc] init];
        _imageRArr = [[NSArray alloc] init];
        
    }
    return self;
}
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
    
    _whichMain = @"shijian";
    
    self.navigationController.navigationBarHidden = YES;
    
    /*文字的本地化
    
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(50, 250, 200, 30)];
   label.text = NSLocalizedString(@"qianfeng", nil);
    */
    

    DVSwitch *switcher = [[DVSwitch alloc] initWithStringsArray:@[@"实习实践", @"文化体验"]];
    switcher.frame = CGRectMake(self.view.frame.size.width/2 -100, 25, 200, 29);
    NJLog(@"switcher.frame%f,%f",switcher.frame.origin.x,switcher.frame.origin.y);
    NJLog(@"%f,pingmu",self.view.frame.size.width/2);
    int a = self.view.bounds.size.width/2;
    switcher.center = CGPointMake(a, 64/2);
    switcher.backgroundColor = [UIColor whiteColor];
    switcher.labelTextColorInsideSlider = [UIColor whiteColor];
    switcher.labelTextColorOutsideSlider = mainBlue;
    switcher.sliderColor = mainBlue;
    switcher.font = [UIFont systemFontOfSize:14];
    [_topBackView addSubview:switcher];
    [switcher setPressedHandler:^(NSUInteger index) {
        
        NSLog(@"Did switch to index: %lu", (unsigned long)index);
        if(index == 0){
        
        _whichMain = @"shijian";
            [_mySpecialTableView reloadData];
        
        }else{
        
        _whichMain = @"wenhua";
            [_mySpecialTableView reloadData];
        }
    }];
    

    [_signUpButton addTarget:self action:@selector(dragMoving:withEvent: )forControlEvents: UIControlEventTouchDragInside];
    [_signUpButton addTarget:self action:@selector(dragEnded:withEvent: )forControlEvents:
     UIControlEventTouchUpOutside];
    
    [_mySpecialTableView setSeparatorStyle:UITableViewCellSeparatorStyleNone];
    
    [_mySpecialTableView registerNib:[UINib nibWithNibName:@"MainTitleView" bundle:nil] forCellReuseIdentifier:@"MainTitleView"];
    [_mySpecialTableView registerNib:[UINib nibWithNibName:@"internshipInfoCell" bundle:nil] forCellReuseIdentifier:@"internshipInfoCell"];
    [_mySpecialTableView registerNib:[UINib nibWithNibName:@"InternshipProcessCell" bundle:nil] forCellReuseIdentifier:@"InternshipProcessCell"];
    
    [_mySpecialTableView registerNib:[UINib nibWithNibName:@"movieCell" bundle:nil] forCellReuseIdentifier:@"movieCell"];
    _titleArr = @[@"",@"实习介绍",@"本期实习生",@"实习流程",@"实习视频"];
    _imageArr = @[@"",@"cultural_experience_jies_ic",@"practice_sxs_ic",@"practice_lc_ic",@"cultural_experience_details_ship"];
    _titleRArr = @[@"",@"文化体验介绍",@"文化体验"];
    _imageRArr = @[@"",@"cultural_experience_jies_ic",@"cultural_experience_tiyan_ic"];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma  mark -------- 拖动按钮
- (void) dragMoving: (UIControl *) c withEvent:ev
{
    c.center = [[[ev allTouches] anyObject] locationInView:self.view];
    NJLog(@"123 %f",_signUpButton.frame.origin.x);
}

- (void) dragEnded: (UIControl *) c withEvent:ev
{
    c.center = [[[ev allTouches] anyObject] locationInView:self.view];
     NJLog(@"456 %f",_signUpButton.frame.origin.x);
}
#pragma mark ------- 报名
- (IBAction)signUpAction:(id)sender {
    
    
    NJLog(@"被点击了");
    chooseJobVC *choose = [[chooseJobVC alloc] initWithNibName:@"chooseJobVC" bundle:nil];
    [self.navigationController pushViewController:choose animated:YES];
    
}
#pragma mark --------------<UITableViewDataSource,UITableViewDelegate>
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if([_whichMain isEqualToString:@"shijian"]){
        // 实习实践
    // 广告 实习介绍 本期实习生 实习流程 实习视频
    
    if(indexPath.section == 0 || indexPath.section == 2){
        // 广告 本期实习生
        internshipInfoCell *cell = [tableView dequeueReusableCellWithIdentifier:@"internshipInfoCell"];
        cell.backgroundColor = [UIColor redColor];
        cell.internshipInfoScrollView.contentSize = CGSizeMake(self.view.frame.size.width * 2 , 0);
        [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
        for(int i = 0 ;i < 5;i++){
        
//            UIButton *button=[UIButton buttonWithType:UIButtonTypeCustom];
//            button.frame = 
        }
        
    
        
        
        
        return cell;
    }if (indexPath.section == 3){
    
    
        InternshipProcessCell *cell = [tableView dequeueReusableCellWithIdentifier:@"InternshipProcessCell"];
        [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
        return cell;
    
    }if(indexPath.section == 4){
    
        movieCell *cell = [tableView dequeueReusableCellWithIdentifier:@"movieCell"];
        return cell;
    }
    
    
    else{
    
    static NSString *reusedID=@"reusedID";
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:reusedID];
    if(!cell)/////cell==nil
    {
        cell=[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reusedID];
        
        
    }
   
    return cell;
    
    }
    }else{
    // 文化体验
        if(indexPath.section == 0 ){
            // 广告
            internshipInfoCell *cell = [tableView dequeueReusableCellWithIdentifier:@"internshipInfoCell"];
            cell.backgroundColor = [UIColor redColor];
            cell.internshipInfoScrollView.contentSize = CGSizeMake(self.view.frame.size.width * 2 , 0);
            [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
            
            
            
            
            
            return cell;
        }else
        {
    
            static NSString *reusedID=@"reusedID1";
        UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:reusedID];
        if(!cell)/////cell==nil
        {
            cell=[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reusedID];
            
            
        }
        
        return cell;

    
    
        }
    
    
    }
    
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    
    if([_whichMain isEqualToString:@"shijian"])
    {
    return 5;
    }
    return 3;
}
-(UIView *) tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    if([_whichMain isEqualToString:@"shijian"]){
    MainTitleView *view  = [[[NSBundle mainBundle] loadNibNamed:@"MainTitleView" owner:self options:nil]lastObject];
    
    view.titleLable.text = _titleArr[section];
    view.headImg.image = [UIImage imageNamed:_imageArr[section]];
        if(section == 4){
        
//            [view.moreButton setTitle:@"更多视频" forState:UIControlStateNormal];
            view.moreButton.hidden = NO;
        }else{
            view.moreButton.hidden = YES;
        
        }
    return view;
    }else{
    
    
    
        MainTitleView *view  = [[[NSBundle mainBundle] loadNibNamed:@"MainTitleView" owner:self options:nil]lastObject];
        
        view.titleLable.text = _titleRArr[section];
        view.headImg.image = [UIImage imageNamed:_imageRArr[section]];
        view.moreButton.hidden = YES;
        return view;
    
    
    
    
    }
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{

    if(section == 0){
    
        return 0.0f;
    
    }
    return 40.0f;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.section  == 3)
    {
    
        return 580;
    }
    return 50;
}
#pragma mark--------- 购物车
- (IBAction)shoppingCartAction:(id)sender {
    
    shoppingCartVC *shopVC = [[shoppingCartVC alloc] initWithNibName:@"shoppingCartVC" bundle:nil];
    [self.navigationController pushViewController:shopVC animated:YES];

}
#pragma mark---------往期
- (IBAction)pastAction:(id)sender {
    
    pastVC *pastV = [[pastVC alloc] initWithNibName:@"pastVC" bundle:nil];
    [self.navigationController pushViewController:pastV animated:YES];
}



@end
