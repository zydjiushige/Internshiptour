//
//  tabBar.m
//  Internshiptour
//
//  Created by dexiang lu on 16/1/13.
//  Copyright © 2016年 dexiang lu. All rights reserved.
//

#import "tabBar.h"
#import "infoVC.h"
#import "specialSubjectVC.h"
#import "tripHelp.h"
#import "personalVC.h"
@interface tabBar ()

@end

@implementation tabBar

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
  
    self.tabBar.hidden = YES;

    NSArray *normalArr=@[@"nav_ic_im_off",@"nav_ic_zt_off",@"nav_ic_xc_off",@"nav_ic_wd_off"];
    NSArray *selectedArr=@[@"nav_ic_im_on",@"nav_ic_zt_on",@"nav_ic_xc_on",@"nav_ic_wd_on"];
    NSArray *nameArr = @[@"资讯",@"专题",@"行程帮助",@"我的"];
     _tab = [[UIView alloc]initWithFrame:CGRectMake(0, self.view.bounds.size.height-49, self.view.frame.size.width, 49)];
     [self.view addSubview:_tab];
    _tab.backgroundColor = [UIColor colorWithRed:248/255.0 green:248/255.0 blue:248/255.0 alpha:0.98];
    
    for (int i=0; i<4; i++)
    {
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        button.frame = CGRectMake(i*(self.view.frame.size.width/4 ), 0, self.view.frame.size.width/4, 49);
        [button setImageEdgeInsets:UIEdgeInsetsMake(-10, 30, 0, 0)];
        [button setImage:[UIImage imageNamed:normalArr[i]] forState:UIControlStateNormal];
        [button setImage:[UIImage imageNamed:selectedArr[i]] forState:UIControlStateSelected];
        [button setTitle:nameArr[i] forState:UIControlStateNormal];
        [button setTitleEdgeInsets:UIEdgeInsetsMake(30, -20, 0, 0)];
        [button setTitleColor:[UIColor colorWithRed:148/255.0 green:148/255.0 blue:148/255.0 alpha:1.0]forState:UIControlStateNormal];
          [button setTitleColor:[UIColor colorWithRed:9/255.0 green:132/255.0 blue:208/255.0 alpha:1.0]forState:UIControlStateSelected];
        if(i==2){
        
              [button setImageEdgeInsets:UIEdgeInsetsMake(-10, 40, 0, 0)];
        }else if (i==3){
        
              [button setTitleEdgeInsets:UIEdgeInsetsMake(30, -17, 0, 0)];
        }
        button.titleLabel.font = [UIFont systemFontOfSize:10];
        button.tag = 100+i;
        [button addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
        [_tab addSubview:button];
        
        //设置第一个为默认选中
        if (i==0)
        {
            button.selected = YES;
        }

        
    }
    infoVC *info=[[infoVC alloc] init];
    UINavigationController *infoNC=[[UINavigationController alloc] initWithRootViewController:info];
    
    specialSubjectVC *sub = [[specialSubjectVC alloc] init];
    UINavigationController *subNA=[[UINavigationController alloc] initWithRootViewController:sub];
    
    tripHelp *help = [[tripHelp alloc] init];
    UINavigationController *helpNA = [[UINavigationController alloc] initWithRootViewController:help];
    
    personalVC *personVC = [[personalVC alloc] init];
    UINavigationController *personNA = [[UINavigationController alloc] initWithRootViewController:personVC];
    
      self.viewControllers=@[infoNC,subNA,helpNA,personNA];
}
-(void)click:(UIButton *)button
{
    
    //设置tabBarController的选中项
    
//    if(button.tag==103)
//    {
//        NSUserDefaults *myDefault=[NSUserDefaults standardUserDefaults];
//        NSString *eMailStr=[myDefault objectForKey:@"email"];
//        NSString *passwordStr=[myDefault objectForKey:@"password"];
//        if([eMailStr isEqualToString:@"" ]|| [passwordStr isEqualToString:@""])
//        {
//            
//            logginViewController *vc=[[logginViewController alloc] initWithNibName:@"logginViewController" bundle:nil];
//            
//            vc.index=self.selectedIndex;
//            [self.viewControllers[self.selectedIndex] presentViewController:vc animated:YES completion:nil];
//            
//            return;
//        }
    
        
//    }
    
    for(UIButton *button in _tab.subviews)
    {
        if([button isKindOfClass:[UIButton class]])
        {
            button.selected=NO;
        }
    }
    button.selected=YES;
    self.selectedIndex = button.tag - 100;
    //点击
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
