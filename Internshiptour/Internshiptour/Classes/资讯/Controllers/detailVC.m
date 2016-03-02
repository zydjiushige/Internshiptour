//
//  detailVC.m
//  Internshiptour
//
//  Created by dexiang lu on 16/1/14.
//  Copyright © 2016年 dexiang lu. All rights reserved.
//

#import "detailVC.h"
#import "AppDelegate.h"
#import "tabBar.h"
#import "firstCell.h"
#import "secondCell.h"
#import "contentCell.h"
#import "commentCell.h"
#import "Internshiptour-Prefix.pch"
@interface detailVC ()<UITableViewDataSource,UITableViewDelegate,UIScrollViewDelegate,UITextViewDelegate>
{

    UIButton * _BackButton;
    UIButton * _ForwardButton;
    UIView *_backView;
}
//@property (weak, nonatomic) IBOutlet UITextField *myTextField;
@property (weak, nonatomic) IBOutlet UITextView *myTextView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *ChangeTX;
@property (weak, nonatomic) IBOutlet UIView *bottomView;


@property (weak, nonatomic) IBOutlet UILabel *PlaceHolderLable;

@end

@implementation detailVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    // 隐藏tabar,重新创建一个自定义tabbar
    AppDelegate *delegate = [UIApplication sharedApplication].delegate;
    UIWindow *window = delegate.window;
    tabBar *tabbar = (tabBar *)window.rootViewController;
    tabbar.tab.hidden = YES;
    
    _myTextView.layer.borderColor = six9.CGColor;
    _myTextView.layer.borderWidth = 1;
    _myTextView.layer.cornerRadius =5.0;
    
    // 注册cell
    [self.myTableView registerNib:[UINib nibWithNibName:@"firstCell" bundle:nil] forCellReuseIdentifier:@"firstCell"];
    [self.myTableView registerNib:[UINib nibWithNibName:@"secondCell" bundle:nil] forCellReuseIdentifier:@"secondCell"];
    [self.myTableView registerNib:[UINib nibWithNibName:@"contentCell" bundle:nil] forCellReuseIdentifier:@"contentCell"];
    [self.myTableView registerNib:[UINib nibWithNibName:@"commentCell" bundle:nil] forCellReuseIdentifier:@"commentCell"];
    self.view.backgroundColor = [UIColor purpleColor];
    
    // 监听键盘抬起和收起事件
    [[NSNotificationCenter defaultCenter] addObserver:self selector: @selector(KeyboardWillShow:) name:UIKeyboardWillShowNotification object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(KeyboardWillHide:) name:UIKeyboardWillHideNotification object:nil];

    
    //添加返回和转发按钮
    
    // 返回
    _BackButton = [UIButton buttonWithType:UIButtonTypeSystem];
    _BackButton.frame = CGRectMake(12, 22, 20, 20);
    [_BackButton setImage:[UIImage imageNamed:@"back"] forState:UIControlStateNormal];
    [_BackButton addTarget:self action:@selector(goBack) forControlEvents:UIControlEventTouchUpInside];
//    [self.view addSubview:_BackButton];
    
    // 转发
    _ForwardButton = [UIButton buttonWithType:UIButtonTypeSystem];
    _ForwardButton.frame = CGRectMake(self.view.frame.size.width - 20 - 12 , 22, 20, 20);
    [_ForwardButton setImage:[UIImage imageNamed:@"share"] forState:UIControlStateNormal];
//    [self.view addSubview:_ForwardButton];
    
    _backView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 64)];
    _backView.backgroundColor = [UIColor purpleColor];
    [self.view addSubview:_backView];
    
    _backView.backgroundColor = CLEARCOLOR;
    [_backView addSubview:_BackButton];
    [_backView addSubview:_ForwardButton];
    
    
//    [_backView bringSubviewToFront:_BackButton];
//    [_backView bringSubviewToFront:_ForwardButton];
    
}
#pragma mark ------键盘事件
- (void)KeyboardWillShow:(NSNotification *)noti
{
    NSLog(@"%@",noti.userInfo);
    
    //获取键盘的frame
    CGRect keboardFrame = [noti.userInfo[@"UIKeyboardFrameEndUserInfoKey"] CGRectValue];
    //获取键盘动画时间
    CGFloat timeLength = [noti.userInfo[@"UIKeyboardAnimationDurationUserInfoKey"] floatValue];
    
    NSLog(@"frame==%@,timeLength=%f",NSStringFromCGRect(keboardFrame),timeLength);
    
    
    [UIView animateWithDuration:timeLength animations:^{
        
        //修改约束的值
        //原来的约束值+键盘高度
        self.ChangeTX.constant = keboardFrame.size.height;
        [self.view bringSubviewToFront:_bottomView];
        //重新布局
        [self.view layoutIfNeeded];
    }];
}

- (void)KeyboardWillHide:(NSNotification *)noti
{
//    获取键盘动画时间
    CGFloat timeLength = [noti.userInfo[@"UIKeyboardAnimationDurationUserInfoKey"] floatValue];
    [UIView animateWithDuration:timeLength animations:^{
        
        //还原约束的值
        self.ChangeTX.constant = 0;
        
        //重新布局
        [self.view layoutIfNeeded];
        
    }];
}
// 销毁监听者
-(void)dealloc{

    [[NSNotificationCenter defaultCenter]removeObserver:self];
    
}
#pragma mark ----- 返回
-(void)goBack
{

    [self.navigationController popViewControllerAnimated:YES];

}
#pragma mark------------<UITableViewDataSource,UITableViewDelegate>
-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.row == 0){
    
        // 照片
    firstCell *cell = [tableView dequeueReusableCellWithIdentifier:@"firstCell"];
//        cell.backgroundColor = [UIColor redColor];
      
        
    return cell;
    }else if(indexPath.row == 1){
    //标题
        secondCell *cell = [tableView dequeueReusableCellWithIdentifier:@"secondCell"];
        cell.backgroundColor = [UIColor blueColor];
        return cell;
    }else if(indexPath.row == 2){
    
        // 内容
        contentCell *cell = [tableView dequeueReusableCellWithIdentifier:@"contentCell"];
        cell.backgroundColor = [UIColor yellowColor];
        return cell;
    }else if (indexPath.row == 3){
    
        
        // 空格
        static NSString *reusedID=@"reusedID";
        UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:reusedID];
        if(!cell)/////cell==nil
        {
            cell=[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reusedID];
            
            
        }
        cell.backgroundColor = [UIColor grayColor];
        return cell;
    
    }else if (indexPath.row == 4){
        // 评论
        static NSString *reusedIDD=@"commentID";
        UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:reusedIDD];
        if(!cell)/////cell==nil
        {
            cell=[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reusedIDD];
            
            
        }
        
        UILabel *lable = [[UILabel alloc] initWithFrame:CGRectMake(40, 12, 60, 20)];
        lable.text = @"评论";
        [cell addSubview:lable];
        return cell;

    
    }else {
    
        commentCell *cell = [tableView dequeueReusableCellWithIdentifier:@"commentCell"];
        [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
        return cell;
    
    }
    
    return nil;
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{

    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    return 9;

}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.row == 0){
    
        return 100;
    }else if(indexPath.row == 1){
    
        return 50;
    }else if(indexPath.row == 2){
        return 100;
    }else if(indexPath.row == 4){
    
        return 44.0;
    }else if (indexPath.row == 3){
    
        return 10;
    }
    return 100.0;
}
#pragma mark --------UIScrollViewDelegate
-(void)scrollViewWillBeginDragging:(UIScrollView *)scrollView
{
    [self.view endEditing:YES];
 
}

-(void)scrollViewDidScroll:(UIScrollView *)scrollView{
    NJLog(@"offset---scroll:%f",self.myTableView.contentOffset.y);
//    UIColor *color=[UIColor redColor];
    CGFloat offset=_myTableView.contentOffset.y;
    if (offset>100) {
//         CGFloat alpha=1-((64-offset)/64);
//         _backView.hidden = NO;
        [_BackButton setImage:[UIImage imageNamed:@"back2"] forState:UIControlStateNormal];
        [_ForwardButton setImage:[UIImage imageNamed:@"share2"] forState:UIControlStateNormal];
//       _backView.backgroundColor =  [UIColor colorWithRed:0 green:132/255.0 blue:208/255.0 alpha:1];
        _backView.backgroundColor =  [UIColor redColor];
        [_backView addSubview:_BackButton];
        [_backView addSubview:_ForwardButton];
        
        [_backView bringSubviewToFront:_ForwardButton];
        [_backView bringSubviewToFront:_BackButton];
        
        
    }else {
//        CGFloat alpha2=1-((64-offset)/64);
         [_BackButton setImage:[UIImage imageNamed:@"back"] forState:UIControlStateNormal];
        [_ForwardButton setImage:[UIImage imageNamed:@"share"] forState:UIControlStateNormal];
//        _backView.hidden = YES;
//        _backView.alpha = 0;
        _backView.backgroundColor = [UIColor purpleColor];
        [_backView addSubview:_BackButton];
        [_backView addSubview:_ForwardButton];
//        [self.view bringSubviewToFront:_BackButton];
//        [self.view bringSubviewToFront:_ForwardButton];
    }
    
}
#pragma mark -------<UITextViewDelegate>
-(void)textViewDidChange:(UITextView *)textView
{
    if([_myTextView.text length] == 0){
        
        _PlaceHolderLable.hidden = NO;
        
    }else{
        _PlaceHolderLable.hidden = YES;
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
