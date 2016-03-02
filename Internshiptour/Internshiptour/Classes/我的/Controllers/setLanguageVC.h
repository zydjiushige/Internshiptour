//
//  setLanguageVC.h
//  Internshiptour
//
//  Created by 赵雍丹 on 16/2/18.
//  Copyright © 2016年 dexiang lu. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void(^blcoType) (NSString *string);
@interface setLanguageVC : UIViewController



@property (nonatomic,copy)blcoType block;
@property(nonatomic,copy)NSString *language;

@end
