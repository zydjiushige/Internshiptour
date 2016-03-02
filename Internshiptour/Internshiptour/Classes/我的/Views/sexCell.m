//
//  sexCell.m
//  Internshiptour
//
//  Created by 赵雍丹 on 16/1/22.
//  Copyright © 2016年 dexiang lu. All rights reserved.
//

#import "sexCell.h"

@implementation sexCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
// personal_information_nan_on (man) personal_information_nv_on (woman) personal_information_sec_on


// personal_information_nan_off   personal_information_nv_off     personal_information_sec_off
- (IBAction)secretAction:(id)sender {
    
    [_secretButton setTitleColor:[UIColor colorWithRed:51/255.0 green:51/255.0 blue:51/255.0 alpha:1.0] forState:UIControlStateNormal];
    _secretImg.image = [UIImage imageNamed:@"personal_information_sec_on"];
    
    
    // 其余两个选项还原
    [_manButton setTitleColor:[UIColor colorWithRed:153/255.0 green:153/255.0 blue:153/255.0 alpha:1.0] forState:UIControlStateNormal];
    _manImg.image = [UIImage imageNamed:@"personal_information_nan_off"];
    
    [_womenButton setTitleColor:[UIColor colorWithRed:153/255.0 green:153/255.0 blue:153/255.0 alpha:1.0] forState:UIControlStateNormal];
    _womenImg.image = [UIImage imageNamed:@"personal_information_nv_off"];
    
}

- (IBAction)manAction:(id)sender {
    
    
    [_manButton setTitleColor:[UIColor colorWithRed:51/255.0 green:51/255.0 blue:51/255.0 alpha:1.0] forState:UIControlStateNormal];
    _manImg.image = [UIImage imageNamed:@"personal_information_nan_on"];
    
    
    
    // 其余两个选项还原
    [_womenButton setTitleColor:[UIColor colorWithRed:153/255.0 green:153/255.0 blue:153/255.0 alpha:1.0] forState:UIControlStateNormal];
    _womenImg.image = [UIImage imageNamed:@"personal_information_nv_off"];
    
    [_secretButton setTitleColor:[UIColor colorWithRed:153/255.0 green:153/255.0 blue:153/255.0 alpha:1.0] forState:UIControlStateNormal];
    _secretImg.image = [UIImage imageNamed:@"personal_information_sec_off"];
    
}
- (IBAction)womenAction:(id)sender {
    
    [_womenButton setTitleColor:[UIColor colorWithRed:51/255.0 green:51/255.0 blue:51/255.0 alpha:1.0] forState:UIControlStateNormal];
    _womenImg.image = [UIImage imageNamed:@"personal_information_nv_on"];
    
     // 其余两个选项还原
    [_secretButton setTitleColor:[UIColor colorWithRed:153/255.0 green:153/255.0 blue:153/255.0 alpha:1.0] forState:UIControlStateNormal];
    _secretImg.image = [UIImage imageNamed:@"personal_information_sec_off"];
    
    
    [_manButton setTitleColor:[UIColor colorWithRed:153/255.0 green:153/255.0 blue:153/255.0 alpha:1.0] forState:UIControlStateNormal];
    _manImg.image = [UIImage imageNamed:@"personal_information_nan_off"];
    
    
}
@end
