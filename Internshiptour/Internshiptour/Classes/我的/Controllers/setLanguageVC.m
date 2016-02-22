//
//  setLanguageVC.m
//  Internshiptour
//
//  Created by 赵雍丹 on 16/2/18.
//  Copyright © 2016年 dexiang lu. All rights reserved.
//

#import "setLanguageVC.h"

@interface setLanguageVC ()

@property (weak, nonatomic) IBOutlet UIImageView *chineseImage;

@property (weak, nonatomic) IBOutlet UIImageView *englishImage;

@end

@implementation setLanguageVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    NAVBARHIDDEN;
    self.view.backgroundColor = BACKCOLOR;
    
    if([_language isEqualToString:@"中文"]){
        
        _englishImage.hidden = YES;
        _chineseImage.hidden = NO;
        
    }else{
        
        _englishImage.hidden = NO;
        _chineseImage.hidden = YES;
        
        
    }
}
- (IBAction)goBack:(id)sender {
    
//    if(_block){
//        
//        if(_englishImage.hidden == YES){
//            
//            _block(@"中文");
//        }else{
//            
//            _block(@"English");
//        }
//    }

    [self.navigationController popViewControllerAnimated:YES];
    
}
- (IBAction)chooseEnglish:(id)sender {
    
    
    _englishImage.hidden = NO;
    _chineseImage.hidden = YES;
}
- (IBAction)chooseChinese:(id)sender {
    _englishImage.hidden = YES;
    _chineseImage.hidden = NO;
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
