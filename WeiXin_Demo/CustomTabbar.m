//
//  CustomTabbar.m
//  WeiXin_Demo
//
//  Created by YuLei on 4/13/14.
//  Copyright (c) 2014 ___DuanYuLei___. All rights reserved.
//

#import "CustomTabbar.h"

@implementation CustomTabbar{
    
    __weak IBOutlet UIButton *meButton;
    __weak IBOutlet UIButton *discoverButton;
    __weak IBOutlet UIButton *contactsButton;
    __weak IBOutlet UIButton *chatsButton;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

-(void)setSelectIndex:(int)index{
    switch (index) {
        case 0:
            chatsButton.selected = YES;
            break;
        case 1:
            contactsButton.selected = YES;
            break;
        case 2:
            discoverButton.selected = YES;
            break; 
        case 3:
            meButton.selected = YES;
            break;
        default:
            break;
    }
}



- (IBAction)setSelected:(id)sender {
    UIButton *btn = sender;
    self.tabbarController.selectedIndex = btn.tag;
    
    chatsButton.selected = NO;
    contactsButton.selected = NO;
    discoverButton.selected = NO;
    meButton.selected = NO;
    btn.selected = YES;
    
    [[NSUserDefaults standardUserDefaults] setInteger:btn.tag forKey:TabIndex];
}



/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
