//
//  myTripCell.h
//  Internshiptour
//
//  Created by 赵雍丹 on 16/2/19.
//  Copyright © 2016年 dexiang lu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface myTripCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *stateLable;// 最下面状态
@property (weak, nonatomic) IBOutlet UILabel *topTripLable;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *topTimeLable;
@property (weak, nonatomic) IBOutlet UILabel *downTripLable;

@property (weak, nonatomic) IBOutlet UIView *INGLine;
@property (weak, nonatomic) IBOutlet UIImageView *INGImageView;
@property (weak, nonatomic) IBOutlet UIView *DoneTripLine;
@property (weak, nonatomic) IBOutlet UIImageView *DoneTripImageView;
@end
