//
//  changeNameVC.m
//  Internshiptour
//
//  Created by 赵雍丹 on 16/2/17.
//  Copyright © 2016年 dexiang lu. All rights reserved.
//

#import "changeNameVC.h"

@interface changeNameVC ()

@end

@implementation changeNameVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    NJLog(@"修改用户名字中名字为--%@",_nameTextField.text);
    
    self.navigationController.navigationBarHidden = YES;
    self.view.backgroundColor = BACKCOLOR;
    _nameTextField.text = _name;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)goBack:(id)sender {
    
    [self.navigationController popViewControllerAnimated:YES];
}
- (IBAction)cancel:(id)sender {
    
    [_nameTextField setText:@""];
    
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
