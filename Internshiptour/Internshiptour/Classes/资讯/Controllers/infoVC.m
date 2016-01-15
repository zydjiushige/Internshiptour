//
//  infoVC.m
//  Internshiptour
//
//  Created by dexiang lu on 16/1/13.
//  Copyright © 2016年 dexiang lu. All rights reserved.
//

#import "infoVC.h"
#import <WMPageController.h>
#import "WMTableViewController.h"
#import "WMViewController.h"
#import "WMCollectionViewController.h"
#import "AppDelegate.h"
#import "tabBar.h"
@interface infoVC ()
{
    NSArray *_buttonTitleArr;
    
    UIScrollView *_myScrollView;
    UITableView *_myTableView;
}
@end

@implementation infoVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
//    self.view.backgroundColor = [UIColor purpleColor];
    
    self.navigationController.navigationBar.hidden = YES;
    
 
    
    // 创建分页控制器
    [self p_defaultController];
    
    
    // 栏目
    
    WMPageController *pageController = [self p_defaultController];
    pageController.viewFrame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width,[UIScreen mainScreen].bounds.size.height);
    pageController.menuHeight = 64;
    pageController.showOnNavigationBar = NO;
    pageController.menuBGColor = [UIColor colorWithRed:0/255.0 green:132/255.0 blue:208/255.0 alpha:1.0];
    // 添加按钮
//    pageController.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:nil action:nil];
    self.navigationController.navigationBar.barTintColor=[UIColor colorWithRed:0/255.0 green:132/255.0 blue:208/255.0 alpha:1.0];
    pageController.titleColorSelected = [UIColor redColor];
    pageController.titleSizeSelected = 14;
    pageController.titleColorNormal = [UIColor colorWithRed:224/255.0 green:224/255.0 blue:224/255.0 alpha:1.0];
    pageController.titleSizeNormal = 12;
    self.navigationItem.hidesBackButton =YES;
    [self.navigationItem setHidesBackButton:YES];
    [self.navigationController pushViewController:pageController animated:NO];
}

- (WMPageController *)p_defaultController {
    NSMutableArray *viewControllers = [[NSMutableArray alloc] init];
    NSMutableArray *titles = [[NSMutableArray alloc] init];
    for (int i = 0; i < 5; i++) {
        Class vcClass;
        NSString *title;
        switch (i % 3) {
            case 0:
                vcClass = [WMTableViewController class];
                title = @"Greetings";
                break;
            case 1:
                vcClass = [WMViewController class];
                title = @"Hit Me";
                break;
            default:
                vcClass = [WMCollectionViewController class];
                title = @"Fluency";
                break;
        }
        [viewControllers addObject:vcClass];
        [titles addObject:title];
    }
    WMPageController *pageVC = [[WMPageController alloc] initWithViewControllerClasses:viewControllers andTheirTitles:titles];
    NSLog(@"%@",pageVC);
    pageVC.pageAnimatable = YES;
    pageVC.menuItemWidth = 85;
    pageVC.postNotification = YES;
    pageVC.bounces = YES;
    
    return pageVC;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
