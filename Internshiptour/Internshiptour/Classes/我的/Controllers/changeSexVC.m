//
//  changeSexVC.m
//  Internshiptour
//
//  Created by 赵雍丹 on 16/2/18.
//  Copyright © 2016年 dexiang lu. All rights reserved.
//

#import "changeSexVC.h"

@interface changeSexVC ()
@property (weak, nonatomic) IBOutlet UIImageView *manImage;
@property (weak, nonatomic) IBOutlet UIImageView *womanImage;

@end

@implementation changeSexVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.navigationController.navigationBarHidden = YES;
    self.view.backgroundColor = BACKCOLOR;
    
    if([_sex isEqualToString:@"男"]){
    
        _womanImage.hidden = YES;
        _manImage.hidden = NO;
    
    }else{
        
        _manImage.hidden = YES;
        _womanImage.hidden = NO;
        
    
    }
    
    
}
// 选择男性
- (IBAction)selectedMan:(id)sender {
    
    _womanImage.hidden = YES;
    _manImage.hidden = NO;
    
    
}
- (IBAction)goBack:(id)sender {
    
    if(_block){
    
        if(_womanImage.hidden == YES){
        
            _block(@"男");
        }else{
        
            _block(@"女");
        }
    }
    [self.navigationController popViewControllerAnimated:YES];
    
}
// 选择女性
- (IBAction)selectedWoman:(id)sender {
    
    _manImage.hidden = YES;
    _womanImage.hidden = NO;
   
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
