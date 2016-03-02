//
//  loginVC.m
//  Internshiptour
//
//  Created by 赵雍丹 on 16/2/15.
//  Copyright © 2016年 dexiang lu. All rights reserved.
//

#import "loginVC.h"
#import "registerVC.h"
#import "getBackPassword.h"
@interface loginVC ()

@end

@implementation loginVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.navigationController.navigationBarHidden = YES;
    
}
#pragma mark -------- 注册
- (IBAction)registerAction:(id)sender {
    
    registerVC *regVC = [[registerVC alloc] initWithNibName:@"registerVC" bundle:nil];
    [self.navigationController pushViewController:regVC animated:YES];
}
#pragma mark -------- 忘记密码
- (IBAction)forgotPassword:(id)sender {
    
    getBackPassword *getVC = [[getBackPassword alloc] initWithNibName:@"getBackPassword" bundle:nil];
    
    [self.navigationController pushViewController:getVC animated:YES];
    
}

- (IBAction)goBack:(id)sender {
    
    [self.navigationController popViewControllerAnimated:YES];
    
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{

    [self.view endEditing:YES];
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
