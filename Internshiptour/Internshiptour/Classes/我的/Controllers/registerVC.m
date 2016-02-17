//
//  registerVC.m
//  Internshiptour
//
//  Created by 赵雍丹 on 16/2/15.
//  Copyright © 2016年 dexiang lu. All rights reserved.
//

#import "registerVC.h"
#import "ServicesProtocolVC.h"
@interface registerVC ()

@end

@implementation registerVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.navigationController.navigationBarHidden = YES;
    
}
#pragma mark --------注册按钮
- (IBAction)registerAction:(id)sender {
}
- (IBAction)protocolAction:(id)sender {
    
    ServicesProtocolVC *serVC = [[ServicesProtocolVC alloc] initWithNibName:@"ServicesProtocolVC" bundle:nil];
    [self.navigationController pushViewController:serVC animated:YES];
    
    
    
}
- (IBAction)goBack:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];

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
