//
//  ViewController.m
//  WeiBoUI
//
//  Created by gaoyou on 17/6/19.
//  Copyright © 2017年 xin. All rights reserved.
//

#import "ViewController.h"
#import "WBTableView.h"
#import "WBTableViewModel.h"

@interface ViewController ()

@property (nonatomic, strong) WBTableView *tableView;
@property (nonatomic, strong) WBTableViewModel *model;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setTitle:@"微博图文混排"];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    [self setModel:[WBTableViewModel model]];
    [self.model loadData];
    [self.model setSelectHandler:^(NSIndexPath *indexPath) {
        NSLog(@"选择了--->%@",indexPath);
    }];
    
    [self setTableView:[WBTableView tableViewWithFrame:self.view.bounds delegate:self.model]];
    [self.view addSubview:self.tableView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
