//
//  internshipInfoCell.h
//  Internshiptour
//
//  Created by 赵雍丹 on 16/2/25.
//  Copyright © 2016年 dexiang lu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface internshipInfoCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIScrollView *internshipInfoScrollView;
@property(nonatomic,strong)UIPageControl *pageCon;
@end
