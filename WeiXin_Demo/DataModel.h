//
//  DataModel.h
//  WeiXin_Demo
//
//  Created by YuLei on 4/15/14.
//  Copyright (c) 2014 ___DuanYuLei___. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataModel : NSObject
@property (nonatomic, strong)NSMutableArray *userName;
@property (nonatomic, strong)NSMutableArray *userMessage;
@property (nonatomic, strong)NSMutableArray *imagePic;
@property (nonatomic, strong)NSMutableArray *dataUpdate;

@end
