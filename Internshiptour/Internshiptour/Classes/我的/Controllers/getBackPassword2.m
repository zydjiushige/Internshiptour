//
//  getBackPassword2.m
//  Internshiptour
//
//  Created by 赵雍丹 on 16/2/16.
//  Copyright © 2016年 dexiang lu. All rights reserved.
//

#import "getBackPassword2.h"

@interface getBackPassword2 ()

@end

@implementation getBackPassword2

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)goBack:(id)sender {
    
    [self.navigationController popViewControllerAnimated:YES];
}
#pragma mark -------- 前往邮箱事件
- (IBAction)goToEMail:(id)sender {
    
    
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
