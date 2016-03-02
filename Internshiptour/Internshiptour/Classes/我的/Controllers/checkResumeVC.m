//
//  checkResumeVC.m
//  Internshiptour
//
//  Created by 赵雍丹 on 16/2/28.
//  Copyright © 2016年 dexiang lu. All rights reserved.
//

#import "checkResumeVC.h"

@interface checkResumeVC ()

@end

@implementation checkResumeVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    NAVBARHIDDEN;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
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
