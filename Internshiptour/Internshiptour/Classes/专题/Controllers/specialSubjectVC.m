//
//  specialSubjectVC.m
//  Internshiptour
//
//  Created by dexiang lu on 16/1/13.
//  Copyright © 2016年 dexiang lu. All rights reserved.
//

#import "specialSubjectVC.h"

@interface specialSubjectVC ()

@end

@implementation specialSubjectVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.view.backgroundColor = [UIColor blueColor];
    
    
    //文字的本地化
    
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(50, 250, 200, 30)];
    label.text = NSLocalizedString(@"qianfeng", nil);

    [self.view addSubview:label];
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
