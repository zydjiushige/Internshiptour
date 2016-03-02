//
//  ExpectedIndustryVC.h
//  Internshiptour
//
//  Created by 赵雍丹 on 16/1/25.
//  Copyright © 2016年 dexiang lu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ExpectedIndustryVC : UIViewController
@property (weak, nonatomic) IBOutlet UIView *selectedView;

@property (weak, nonatomic) IBOutlet UITableView *myExpectedIndustryTableView;
@property (weak, nonatomic) IBOutlet UIButton *downOrUpButton;
@property (weak, nonatomic) IBOutlet UILabel *countLable;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *tableViewConstraint;
@property(nonatomic,copy)NSMutableArray *titleArr;
@end
