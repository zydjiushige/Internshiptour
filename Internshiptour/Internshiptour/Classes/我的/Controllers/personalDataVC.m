//
//  personalDataVC.m
//  Internshiptour
//
//  Created by 赵雍丹 on 16/2/17.
//  Copyright © 2016年 dexiang lu. All rights reserved.
//

#import "personalDataVC.h"
#import "headPortraitCellTableViewCell.h"
#import "personalInfoCell.h"
#import "changeNameVC.h"
#import "changeSexVC.h"
#import "locationVC.h"
#import "personalSignatureVC.h"
@interface personalDataVC ()<UITableViewDataSource,UITableViewDelegate,UIImagePickerControllerDelegate,UINavigationControllerDelegate>
{
    NSArray *_titleArr;
    NSData *_headImage;
}
@property (weak, nonatomic) IBOutlet UITableView *myPerDataTV;
@end

@implementation personalDataVC
-(instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    if(self=[super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])
    {
      _titleArr = [[NSArray alloc] init];
        
    }
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.navigationController.navigationBarHidden = YES;
    
    [_myPerDataTV registerNib:[UINib nibWithNibName:@"headPortraitCellTableViewCell" bundle:nil] forCellReuseIdentifier:@"headPortraitCell"];
    [_myPerDataTV registerNib:[UINib nibWithNibName:@"personalInfoCell" bundle:nil] forCellReuseIdentifier:@"personalInfoCell"];
    _myPerDataTV.backgroundColor = BACKCOLOR;
    
    _titleArr = @[@"",@"头像",@"",@"昵称",@"邮箱",@"性别",@"所在地",@"个性签名"];
    
}
#pragma mark - 返回
- (IBAction)goBack:(id)sender {
    
    [self.navigationController popViewControllerAnimated:YES];
}
#pragma mark -----------<UITableViewDataSource,UITableViewDelegate>
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 8;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.row == 1){
    // 头像
        headPortraitCellTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"headPortraitCell"];
        cell.headImageView.layer.masksToBounds = YES;
        cell.headImageView.layer.cornerRadius = 22.5;
        
        cell.headImageView.image = [UIImage imageWithData:_headImage];
        return cell;
    }else if(indexPath.row == 0 || indexPath.row == 2){
    
    static NSString *reusedID=@"reusedID";
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:reusedID];
    if(!cell)/////cell==nil
    {
        cell=[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reusedID];
        
        
    }
        cell.backgroundColor = [UIColor clearColor];
    return cell;
    }else{
    
        personalInfoCell *cell = [tableView dequeueReusableCellWithIdentifier:@"personalInfoCell"];
        cell.leftLable.text = _titleArr[indexPath.row];
        if(indexPath.row == 3 || indexPath.row == 4 || indexPath.row == 5 || indexPath.row == 6 || indexPath.row == 7){
        UIView *downLine = [[UIView alloc] initWithFrame:CGRectMake(12, cell.frame.size.height, self.view.frame.size.width - 12, 1)];
        downLine.backgroundColor = dfdfddColor;
        [cell addSubview:downLine];
        }

        return cell;
    
    }
//    return nil;
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;

}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.row == 0 || indexPath.row == 2){
    
        return 15.0f;
    }else if(indexPath.row == 1){
        return 61.0f;
    }else if(indexPath.row == 7){
        return 65.0f;
    }else {
    
        return 44.0;
    }

}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.row == 1){
    // 选取头像
        
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"" message:@"选择头像" preferredStyle:UIAlertControllerStyleActionSheet];
        // 拍照
        UIAlertAction *actionCancel = [UIAlertAction actionWithTitle:@"拍照" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            
            UIImagePickerController *picker = [[UIImagePickerController alloc]init];
            
            //设置图片源
            if(TARGET_IPHONE_SIMULATOR){
                
                picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
                
            }else{
                picker.sourceType = UIImagePickerControllerSourceTypeSavedPhotosAlbum;
                
            }
            //代理
            picker.delegate = self;
            
            [self presentViewController:picker animated:YES completion:nil];

            
        }];
        // 从手机相册选择
          UIAlertAction *actionCancel1 = [UIAlertAction actionWithTitle:@"从手机相册选择" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
              UIImagePickerController *picker = [[UIImagePickerController alloc]init];
              
              //设置图片源
              if(TARGET_IPHONE_SIMULATOR){
                  
                  picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
                  
              }else{
                  picker.sourceType = UIImagePickerControllerSourceTypeCamera;
                  
              }
              //代理
              picker.delegate = self;
              
              [self presentViewController:picker animated:YES completion:nil];

              
              
          }];
        
        UIAlertAction *actionYes = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
        [alert addAction:actionYes];
        [alert addAction:actionCancel];
        [alert addAction:actionCancel1];
        [self presentViewController:alert animated:YES completion:nil];
    }else if (indexPath.row == 3){
        
        // 修改名字
        changeNameVC *nameVC = [[changeNameVC alloc] initWithNibName:@"changeNameVC" bundle:nil];
       
        personalInfoCell *cell = [_myPerDataTV cellForRowAtIndexPath:indexPath];
        NJLog(@"个人资料中用户名字--%@",cell.rightLable.text);
        nameVC.name= cell.rightLable.text;
        [self.navigationController pushViewController:nameVC animated:YES];
    }else if (indexPath.row == 5){
    
        changeSexVC *sexVC = [[changeSexVC alloc] initWithNibName:@"changeSexVC" bundle:nil];
        
        sexVC.block = ^(NSString *string){
        
          personalInfoCell *cell = [_myPerDataTV cellForRowAtIndexPath:indexPath];
            cell.rightLable.text = string;
            [_myPerDataTV reloadData];
        };
        personalInfoCell *cell = [_myPerDataTV cellForRowAtIndexPath:indexPath];
        sexVC.sex = cell.rightLable.text;
        [self.navigationController pushViewController:sexVC animated:YES];
    
    }else if(indexPath.row == 6){
        // 所在地
        
        locationVC *locVC = [[locationVC alloc] initWithNibName:@"locationVC" bundle:nil];
        [self.navigationController pushViewController:locVC animated:YES];
    
    }else if(indexPath.row == 7){
    
        personalSignatureVC *SignatureVC = [[personalSignatureVC alloc] initWithNibName:@"personalSignatureVC" bundle:nil];
        [self.navigationController pushViewController:SignatureVC animated:YES];
    }
    
}
#pragma mark ----- <选取头像的回调>
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    NJLog(@"info==%@",info);
    //将图片转化为二进制
    UIImage *image = info[@"UIImagePickerControllerOriginalImage"];
      _headImage = UIImageJPEGRepresentation(image, 0.001);
    [_myPerDataTV reloadData];
    //退出图片选择器
    [picker dismissViewControllerAnimated:YES completion:nil];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
