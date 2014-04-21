//
//  ViewController_chats.m
//  WeiXin_Demo
//
//  Created by YuLei on 4/13/14.
//  Copyright (c) 2014 ___DuanYuLei___. All rights reserved.
//

#import "ViewController_chats.h"
#import "DataModel.h"

@interface ViewController_chats () <UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *myTableView;
@property (weak, nonatomic) IBOutlet UISearchBar *mySearchBar;

@end

@implementation ViewController_chats{
    DataModel *model;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    model = [DataModel alloc];
    
    
    
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 200, 20)];
    titleLabel.text = @"Chats";
    titleLabel.textColor = [UIColor whiteColor];
    titleLabel.textAlignment = NSTextAlignmentCenter;
    
    self.navigationItem.titleView = titleLabel;
    self.navigationController.navigationBar.barTintColor=[UIColor blackColor];

    
    UIBarButtonItem *barButtonItem2=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(onBarButtonItemClicked:)];
    self.navigationItem.rightBarButtonItems=@[barButtonItem2];
    // Do any additional setup after loading the view from its nib.
    
    self.myTableView.delegate = self;
    self.myTableView.dataSource = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
}



-(void)onBarButtonItemClicked:(id)sender{
    
}

@end
