//
//  shoppingCartVC.m
//  Internshiptour
//
//  Created by 赵雍丹 on 16/3/1.
//  Copyright © 2016年 dexiang lu. All rights reserved.
//

#import "shoppingCartVC.h"
#import "shoppingCartCell.h"
#import "AppDelegate.h"
#import "tabBar.h"
@interface shoppingCartVC ()<UITableViewDelegate,UITableViewDataSource>
{
    BOOL _isSelect;

}
@property (weak, nonatomic) IBOutlet UITableView *myShoppingCartTB;
@property (weak, nonatomic) IBOutlet UIButton *allSelectButton;
@property (weak, nonatomic) IBOutlet UILabel *totalLable;
@property (weak, nonatomic) IBOutlet UIButton *settlementButton;
@end

@implementation shoppingCartVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    NAVBARHIDDEN;
    
    AppDelegate *delegate = [UIApplication sharedApplication].delegate;
    UIWindow *window = delegate.window;
    tabBar *tabbar = (tabBar *)window.rootViewController;
    tabbar.tab.hidden = YES;
    
    [_myShoppingCartTB registerNib:[UINib nibWithNibName:@"shoppingCartCell" bundle:nil] forCellReuseIdentifier:@"shoppingCartCell"];
    [_myShoppingCartTB setSeparatorStyle:UITableViewCellSeparatorStyleNone];
    _isSelect = NO;
}
- (IBAction)goBack:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
    
}
#pragma mark ------- 全选
- (IBAction)allSelectAction:(id)sender {
    
    _isSelect = !_isSelect;
    if(_isSelect){
    [_allSelectButton setImage:[UIImage imageNamed:@"shopping_cart_tick_on"] forState:UIControlStateNormal];
    }else{
     [_allSelectButton setImage:[UIImage imageNamed:@"shopping_cart_tick_off"] forState:UIControlStateNormal];
    
    }
    [_myShoppingCartTB reloadData];
    
}
#pragma mark -------结算
- (IBAction)settlementAction:(id)sender {
}
#pragma mark --------<UITableViewDelegate,UITableViewDataSource>
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 2;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    shoppingCartCell *cell = [tableView dequeueReusableCellWithIdentifier:@"shoppingCartCell"];
    [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
//    [cell.selectButton addTarget:self action:@selector(selectGoods) forControlEvents:UIControlEventTouchUpInside];
    if(_isSelect){
        [cell.selectButton setImage:[UIImage imageNamed:@"shopping_cart_tick_on"] forState:UIControlStateNormal];
        
    }else{
        
        [cell.selectButton setImage:[UIImage imageNamed:@"shopping_cart_tick_off"] forState:UIControlStateNormal];
       
        
    }

    
    
    return cell;
    
    
}
//-(void)selectGoods
//{
//    
//
//}
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (editingStyle == UITableViewCellEditingStyleDelete) {
//        [dataArray removeObjectAtIndex:indexPath.row];
//        // Delete the row from the data source.
//        [testTableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
        
    }
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
    }
}
- (NSString *)tableView:(UITableView *)tableView titleForDeleteConfirmationButtonForRowAtIndexPath:(NSIndexPath *)indexPath{
    return @"删除";
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{

    shoppingCartCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    
   
    
    if(_isSelect){
    [cell.selectButton setImage:[UIImage imageNamed:@"shopping_cart_tick_on"] forState:UIControlStateNormal];
         _isSelect = !_isSelect;
    }else{
    
        [cell.selectButton setImage:[UIImage imageNamed:@"shopping_cart_tick_off"] forState:UIControlStateNormal];
         _isSelect = !_isSelect;
    
    }
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;

}
-(CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 131.0f;
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
