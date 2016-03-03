//
//  ExperienceDirVC.m
//  Internshiptour
//
//  Created by 赵雍丹 on 16/2/9.
//  Copyright © 2016年 dexiang lu. All rights reserved.
//

#import "ExperienceDirVC.h"

@interface ExperienceDirVC ()<UITextViewDelegate,UIScrollViewDelegate>

@property (weak, nonatomic) IBOutlet UILabel *wordNum;
@property (weak, nonatomic) IBOutlet UITextView *dirTextView;
@property (weak, nonatomic) IBOutlet UILabel *PlaceHolderLable;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *wordViewBottomCon;
@end

@implementation ExperienceDirVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.navigationController.navigationBarHidden = YES;
    
    
    // 监听键盘
    [[NSNotificationCenter defaultCenter] addObserver:self selector: @selector(KeyboardWillShow:) name:UIKeyboardWillShowNotification object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(KeyboardWillHide:) name:UIKeyboardWillHideNotification object:nil];

    
}
-(void)KeyboardWillShow:(NSNotification *)noti
{
    
    // noti.userInfo 保存着键盘的一些信息
    // 键盘动画结束时的frame
    CGRect rect = [[noti.userInfo objectForKey:UIKeyboardFrameEndUserInfoKey] CGRectValue];
    // 键盘动画的持续时间
    CGFloat duration = [[noti.userInfo objectForKey:UIKeyboardAnimationDurationUserInfoKey] floatValue];
    
    [UIView animateWithDuration:duration animations:^{
//        CGRect r = _textF.frame;
//        r.origin.y = self.view.bounds.size.height-rect.size.height-50;
//        _textF.frame = r;
        _wordViewBottomCon.constant = rect.size.height ;
    }];

    
}


-(void)KeyboardWillHide:(NSNotification*)noti
{
    CGFloat duration = [[noti.userInfo objectForKey:UIKeyboardAnimationDurationUserInfoKey] floatValue];
    
    [UIView animateWithDuration:duration animations:^{
//        CGRect r = _textF.frame;
//        r.origin.y = self.view.bounds.size.height-50;
//        _textF.frame = r;
        _wordViewBottomCon.constant = 0 ;
    }];

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark ------完成
- (IBAction)doneAction:(id)sender {
}
// 返回
- (IBAction)goBack:(id)sender {
    
    [self.navigationController popViewControllerAnimated:YES];
}


-(void)textViewDidChange:(UITextView *)textView
{
    if([_dirTextView.text length] == 0){
        
        _PlaceHolderLable.hidden = NO;
        
    }else{
        _PlaceHolderLable.hidden = YES;
    }
    
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}
//如果输入超过规定的字数100，就不再让输入
- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text
{
    if (range.location>=2000)
    {
        
        
        return  NO;
    }
    else
    {
        int remainTextNum ;
        remainTextNum = 1999;
        NSString  * nsTextContent=_dirTextView.text;
        int   existTextNum=(int)[nsTextContent length];
        remainTextNum =1999-existTextNum;
        _wordNum.text  = [NSString stringWithFormat:@"%d/2000",existTextNum];
        NJLog(@"remainTextNum%d",remainTextNum);
        return YES;
    }
}

//- (void)didReceiveMemoryWarning {
//    [super didReceiveMemoryWarning];
//    // Dispose of any resources that can be recreated.
//}
@end
