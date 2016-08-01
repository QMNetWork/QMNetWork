//
//  ViewController.m
//  QMAPIManage
//
//  Created by Apricot on 16/7/28.
//  Copyright © 2016年 Apricot. All rights reserved.
//

#import "ViewController.h"
#import "TestAPI.h"
#import "TestAPIProxy.h"
#import "ViewModel.h"
@interface ViewController ()
@property (nonatomic, strong)ViewModel *viewModel;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    [TestAPI apiName:@"tngou/info/news" withParams:@{@"id":@(0)}];
    self.viewModel = [[ViewModel alloc] init];
    [self.viewModel api];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
