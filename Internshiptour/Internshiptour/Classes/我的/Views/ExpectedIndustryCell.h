//
//  ExpectedIndustryCell.h
//  Internshiptour
//
//  Created by 赵雍丹 on 16/1/26.
//  Copyright © 2016年 dexiang lu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ExpectedIndustryVC.h"
@interface ExpectedIndustryCell : UITableViewCell

//@property (weak, nonatomic) IBOutlet UIButton *bigButton;
@property (weak, nonatomic) IBOutlet UILabel *titleLable;
@property (weak, nonatomic) IBOutlet UIButton *boolSelectedButton;
@property(nonatomic,assign)BOOL isSelected;
//@property(nonatomic,copy)NSArray *titleArr;
@end
