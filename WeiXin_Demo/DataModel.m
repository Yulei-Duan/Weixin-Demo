//
//  DataModel.m
//  WeiXin_Demo
//
//  Created by YuLei on 4/15/14.
//  Copyright (c) 2014 ___DuanYuLei___. All rights reserved.
//

/*
 @property (nonatomic, strong)NSMutableArray *userName;
 @property (nonatomic, strong)NSMutableArray *userMessage;
 @property (nonatomic, strong)NSMutableArray *imagePic;
 @property (nonatomic, strong)NSMutableArray *dataUpdate;
 
 */

#import "DataModel.h"

@implementation DataModel

-(void)begin{
    self.userMessage = [NSMutableArray array];
    self.userName = [NSMutableArray array];
    self.imagePic = [NSMutableArray array];
    self.dataUpdate = [NSMutableArray array];
    for (int i = 0; i<10; ++i) {
        NSString *strName = [NSString stringWithFormat:@"Friend %d", i];
        NSString *strUserMessage = [NSString stringWithFormat:@"Please call me %d.", i];
        NSString *strImage = [NSString stringWithFormat:@"MoreMyFavorites_ios7"];
        
        [self.userName addObject:strName];
        [self.userMessage addObject:strUserMessage];
        [self.imagePic addObject:strImage];
    }
}

@end
