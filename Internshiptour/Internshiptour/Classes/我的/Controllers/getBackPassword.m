//
//  getBackPassword.m
//  Internshiptour
//
//  Created by 赵雍丹 on 16/2/16.
//  Copyright © 2016年 dexiang lu. All rights reserved.
//

#import "getBackPassword.h"
#import "getBackPassword2.h"
@interface getBackPassword ()

@end

@implementation getBackPassword

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
- (IBAction)nextAction:(id)sender {
    
    getBackPassword2 *getVC = [[getBackPassword2 alloc] initWithNibName:@"getBackPassword2" bundle:nil];
    
    [self.navigationController pushViewController:getVC animated:YES];
    
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
