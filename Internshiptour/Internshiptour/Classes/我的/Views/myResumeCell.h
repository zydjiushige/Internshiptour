//
//  myResumeCell.h
//  Internshiptour
//
//  Created by 赵雍丹 on 16/1/22.
//  Copyright © 2016年 dexiang lu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface myResumeCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *resumeFirst;

@property (weak, nonatomic) IBOutlet UILabel *resumeNum;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *resumeDate;
@end
