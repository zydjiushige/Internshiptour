//
//  firstCell.m
//  Internshiptour
//
//  Created by dexiang lu on 16/1/14.
//  Copyright © 2016年 dexiang lu. All rights reserved.
//

#import "firstCell.h"

@implementation firstCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
// 返回按钮
- (IBAction)goBack:(id)sender {
    
   
    NSLog(@"返回按钮");
}
// 转发按钮
- (IBAction)forward:(id)sender {
    
    NSLog(@"转发按钮");
}

@end
