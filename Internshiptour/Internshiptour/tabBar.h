//
//  tabBar.h
//  Internshiptour
//
//  Created by dexiang lu on 16/1/13.
//  Copyright © 2016年 dexiang lu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface tabBar : UITabBarController

@property (nonatomic,strong) UIView *tab;

-(void)click:(UIButton *)button;

@end
