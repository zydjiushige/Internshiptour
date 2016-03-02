//
//  personalSignatureVC.m
//  Internshiptour
//
//  Created by 赵雍丹 on 16/2/18.
//  Copyright © 2016年 dexiang lu. All rights reserved.
//

#import "personalSignatureVC.h"

@interface personalSignatureVC ()

@property (weak, nonatomic) IBOutlet UILabel *wordsNumLable;
@property (weak, nonatomic) IBOutlet UITextView *myTextField;

@end

@implementation personalSignatureVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.navigationController.navigationBarHidden = YES;
    self.view.backgroundColor = BACKCOLOR;
    
}
#pragma mark ------- 返回
- (IBAction)goBack:(id)sender {
    
    [self.navigationController popViewControllerAnimated:YES];
    
}
#pragma mark ------ 完成
- (IBAction)Done:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
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
