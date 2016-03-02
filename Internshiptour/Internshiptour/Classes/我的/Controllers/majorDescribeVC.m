//
//  majorDescribeVC.m
//  Internshiptour
//
//  Created by 赵雍丹 on 16/1/28.
//  Copyright © 2016年 dexiang lu. All rights reserved.
//

#import "majorDescribeVC.h"

@interface majorDescribeVC ()<UITextViewDelegate>

@property (weak, nonatomic) IBOutlet UILabel *placeHolder;
@property (weak, nonatomic) IBOutlet UITextView *majorDescribeTV;

@end

@implementation majorDescribeVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.navigationController.navigationBarHidden = YES;
    
    
}
- (IBAction)goBack:(id)sender {
    
    [self.navigationController popViewControllerAnimated:YES];
}
- (IBAction)writeDone:(id)sender {
}
#pragma mark -----------<UITextViewDelegate>
-(void)textViewDidChange:(UITextView *)textView
{
    if([_majorDescribeTV.text length] == 0){
    
        _placeHolder.hidden = NO;
    
    }else{
        _placeHolder.hidden = YES;
    }

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
