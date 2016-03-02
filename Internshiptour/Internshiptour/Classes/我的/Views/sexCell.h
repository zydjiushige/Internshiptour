//
//  sexCell.h
//  Internshiptour
//
//  Created by 赵雍丹 on 16/1/22.
//  Copyright © 2016年 dexiang lu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface sexCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *manImg;
@property (weak, nonatomic) IBOutlet UIImageView *womenImg;
@property (weak, nonatomic) IBOutlet UIImageView *secretImg;
@property (weak, nonatomic) IBOutlet UIButton *secretButton;
@property (weak, nonatomic) IBOutlet UIButton *manButton;
@property (weak, nonatomic) IBOutlet UIButton *womenButton;

@end
