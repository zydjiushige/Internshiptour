//
//  ExperienceDirVC.m
//  Internshiptour
//
//  Created by 赵雍丹 on 16/2/9.
//  Copyright © 2016年 dexiang lu. All rights reserved.
//

#import "ExperienceDirVC.h"

@interface ExperienceDirVC ()<UITextViewDelegate>

@property (weak, nonatomic) IBOutlet UITextView *dirTextView;
@property (weak, nonatomic) IBOutlet UILabel *PlaceHolderLable;
@end

@implementation ExperienceDirVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.navigationController.navigationBarHidden = YES;
    
}
#pragma mark ------完成
- (IBAction)doneAction:(id)sender {
}
// 返回
- (IBAction)goBack:(id)sender {
    
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)textViewDidChange:(UITextView *)textView
{
    if([_dirTextView.text length] == 0){
        
        _PlaceHolderLable.hidden = NO;
        
    }else{
        _PlaceHolderLable.hidden = YES;
    }
    
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
