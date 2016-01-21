//
//  companyInviteVC.m
//  Internshiptour
//
//  Created by 赵雍丹 on 16/1/20.
//  Copyright © 2016年 dexiang lu. All rights reserved.
//

#import "companyInviteVC.h"
#import "receivingCell.h"
#import "AlreadyAcceptedCell.h"
#import "Internshiptour-Prefix.pch"
@interface companyInviteVC ()<UITableViewDataSource,UITableViewDelegate>
{

    NSString * _whichClick;


}
@property (weak, nonatomic) IBOutlet UIView *leftLine;
@property (weak, nonatomic) IBOutlet UIView *rightLine;
@property (weak, nonatomic) IBOutlet UIButton *ToBeReceivedButton;
@property (weak, nonatomic) IBOutlet UIButton *AlreadyAcceptedButton;
@property (weak, nonatomic) IBOutlet UITableView *myTableView;
@end

@implementation companyInviteVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.navigationController.navigationBar.hidden = YES;
    
    _whichClick = @"wait";
    _leftLine.hidden = NO;
    _rightLine.hidden = YES;
   
    self.myTableView.backgroundColor = [UIColor colorWithRed:242/255.0 green:242/255.0 blue:242/255.0 alpha:1.0];
    self.myTableView.separatorStyle = NO;
    
    [self.myTableView registerNib:[UINib nibWithNibName:@"receivingCell" bundle:nil] forCellReuseIdentifier:@"receivingCell"];
    [self.myTableView registerNib:[UINib nibWithNibName:@"AlreadyAcceptedCell" bundle:nil] forCellReuseIdentifier:@"AlreadyAcceptedCell"];
    
}
#pragma mark --------<UITableViewDataSource,UITableViewDelegate>



-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{

    if([_whichClick isEqualToString: @"wait"]){
//    待接收
    receivingCell *cell = [tableView dequeueReusableCellWithIdentifier:@"receivingCell"];
   
     cell.refuseButton.layer.cornerRadius = 5.0f;
    
     cell.refuseButton.layer.masksToBounds = YES;
    
     cell.refuseButton.layer.borderWidth = 0.5f;
    
     cell.refuseButton.layer.borderColor = [[UIColor blackColor]CGColor];
    
//    取消申请
        
        [cell.cancelButton addTarget:self action:@selector(cancel) forControlEvents:UIControlEventTouchUpInside];
        
    cell.cancelButton.layer.cornerRadius = 5.0f;
    
    cell.cancelButton.layer.masksToBounds = YES;
    
    cell.cancelButton.layer.borderWidth = 0.5f;
    
    cell.cancelButton.layer.borderColor = [[UIColor blackColor]CGColor];
    return cell;
    }else if ([_whichClick isEqualToString: @"had"]){
    
        AlreadyAcceptedCell * cell = [tableView dequeueReusableCellWithIdentifier:@"AlreadyAcceptedCell"];
        
        return cell;
    }
    return nil;
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;

}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{

    return 150;


}
-(UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{

    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 20)];
    view.backgroundColor = [UIColor clearColor];
    
    return view;
}
-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 12.0f;
}

#pragma mark -------cancel
-(void)cancel
{

    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"" message:@"确定取消申请吗?" preferredStyle:UIAlertControllerStyleActionSheet];
    UIAlertAction *actionCancel = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:nil];
    UIAlertAction *actionYes = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
    [alert addAction:actionYes];
    [alert addAction:actionCancel];
    [self presentViewController:alert animated:YES completion:nil];
   
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)goBack:(id)sender {
    
    [self.navigationController popToRootViewControllerAnimated:YES];
}
// 待接受
- (IBAction)ToBeReceived:(id)sender {

    _leftLine.hidden = NO;
    _rightLine.hidden = YES;
    
    
    _whichClick = @"wait";
    [_myTableView reloadData];
}

// 已接收
- (IBAction)AlreadyAccepted:(id)sender {
    _leftLine.hidden = YES;
    _rightLine.hidden = NO;
    _whichClick = @"had";
    [_myTableView reloadData];
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
