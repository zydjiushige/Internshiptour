//
//  chooseServicePackVC.m
//  Internshiptour
//
//  Created by 赵雍丹 on 16/2/29.
//  Copyright © 2016年 dexiang lu. All rights reserved.
//

#import "chooseServicePackVC.h"
#import "InfiniteScrollPicker.h"
#import "AppDelegate.h"
#import "tabBar.h"
#import "shoppingCartVC.h"
@interface chooseServicePackVC ()
{
     InfiniteScrollPicker *isp2;
}
@end

@implementation chooseServicePackVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    // 隐藏tabar,重新创建一个自定义tabbar
    AppDelegate *delegate = [UIApplication sharedApplication].delegate;
    UIWindow *window = delegate.window;
    tabBar *tabbar = (tabBar *)window.rootViewController;
    tabbar.tab.hidden = YES;
    _RMBLable.layer.masksToBounds = YES;
    _USDLable.layer.masksToBounds = YES;
    _RMBLable.layer.cornerRadius = 10;
    _USDLable.layer.cornerRadius = 10;
    
    NSMutableArray *set2 = [[NSMutableArray alloc] init];
    for (int i = 1; i <= 10; i++) {
        [set2 addObject:[UIImage imageNamed:[NSString stringWithFormat:@"s2_%d.png", i]]];
    }
    
    isp2 = [[InfiniteScrollPicker alloc] initWithFrame:CGRectMake(0, 64, self.view.frame.size.width, 120)];
    [isp2 setImageAry:set2];
//     [isp2 setItemSize:CGSizeMake(50, 50)];
    [isp2 setHeightOffset:30.0];
    [isp2 setPositionRatio:2.0];
    [isp2 setAlphaOfobjs:0.4];
    [self.view addSubview:isp2];
    
    
}
- (IBAction)goBack:(id)sender {
    
    NAVBACK;
}
//////// 购物车
- (IBAction)shoppingCar:(id)sender {
    
    
    shoppingCartVC *shopVC = [[shoppingCartVC alloc] initWithNibName:@"shoppingCartVC" bundle:nil];
    [self.navigationController pushViewController:shopVC animated:YES];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)infiniteScrollPicker:(InfiniteScrollPicker *)infiniteScrollPicker didSelectAtImage:(UIImage *)image
{
    NSLog(@"selected");
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
