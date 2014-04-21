//
//  CustomTabbar.h
//  WeiXin_Demo
//
//  Created by YuLei on 4/13/14.
//  Copyright (c) 2014 ___DuanYuLei___. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTabbar : UIView
@property (nonatomic,weak)UITabBarController *tabbarController;
-(void)setSelectIndex:(int)index;
@end
