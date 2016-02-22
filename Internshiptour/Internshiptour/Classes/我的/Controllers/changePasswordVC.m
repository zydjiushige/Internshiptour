//
//  changePasswordVC.m
//  Internshiptour
//
//  Created by 赵雍丹 on 16/2/18.
//  Copyright © 2016年 dexiang lu. All rights reserved.
//

#import "changePasswordVC.h"

@interface changePasswordVC ()

@end

@implementation changePasswordVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    NAVBARHIDDEN;
    self.view.backgroundColor = BACKCOLOR;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark ------ 完成
- (IBAction)DoneAction:(id)sender {
    
    [self.navigationController popViewControllerAnimated:YES];
}
#pragma mark ------ 返回
- (IBAction)goBack:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
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
