//
//  ViewController.m
//  Internshiptour
//
//  Created by dexiang lu on 16/1/11.
//  Copyright © 2016年 dexiang lu. All rights reserved.
//

#import "ViewController.h"
#import <MBProgressHUD/MBProgressHUD.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    [MBProgressHUD showHUDAddedTo:self.view animated:YES];
    UILabel *lable = [[UILabel alloc] initWithFrame:CGRectMake(20, 20, 200, 200)];
    lable.backgroundColor = [UIColor redColor];
    [self.view addSubview:lable];
    
    self.view.backgroundColor = [UIColor yellowColor];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
