//
//  pastVC.m
//  Internshiptour
//
//  Created by 赵雍丹 on 16/2/25.
//  Copyright © 2016年 dexiang lu. All rights reserved.
//

#import "pastVC.h"
#import "pastCell.h"
#import "tabBar.h"
#import "AppDelegate.h"
@interface pastVC ()<UITableViewDataSource,UITableViewDelegate>
{
    NSString *_whichClick;
}
@property (weak, nonatomic) IBOutlet UIButton *practiceButton;
@property (weak, nonatomic) IBOutlet UIButton *experienceButton;
@property (weak, nonatomic) IBOutlet UIView *lineL;
@property (weak, nonatomic) IBOutlet UIView *lineR;
@property (weak, nonatomic) IBOutlet UITableView *myPastTableView;
@end

@implementation pastVC
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
    
    self.navigationController.navigationBarHidden = YES;
    
    [_experienceButton setTitleColor:six9 forState:UIControlStateNormal];
    
    _whichClick = @"shijian";
    [_myPastTableView registerNib:[UINib nibWithNibName:@"pastCell" bundle:nil] forCellReuseIdentifier:@"pastCell"];
    
}
- (IBAction)practiceAction:(id)sender {
    
    _lineR .hidden = YES;
    _lineL.hidden =NO;
    [_experienceButton setTitleColor:mainBlue forState:UIControlStateNormal];
    [_practiceButton setTitleColor:six9 forState:UIControlStateNormal];
    _whichClick = @"shijian";
    [_myPastTableView reloadData];
}
- (IBAction)experienceAction:(id)sender {
    
    _lineR .hidden = NO;
    _lineL.hidden = YES;
    
    [_experienceButton setTitleColor:six9 forState:UIControlStateNormal];
    [_practiceButton setTitleColor:mainBlue forState:UIControlStateNormal];
    _whichClick = @"tiyan";
    [_myPastTableView reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
    
    
    
}
- (IBAction)goBack:(id)sender {
    
    [self.navigationController popViewControllerAnimated:YES];
}
#pragma mark----------<UITableViewDataSource,UITableViewDelegate>
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 2;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    pastCell *cell = [tableView dequeueReusableCellWithIdentifier:@"pastCell"];
    if([_whichClick isEqualToString:@"shijian"]){
    cell.titleLable.text = @"实习实践";
    
    }else{
    
    cell.titleLable.text = @"文化体验";
    
    }
    
    return cell;
    
    
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;

}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{

    return 104.0f;
}
@end
