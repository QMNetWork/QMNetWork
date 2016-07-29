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

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [TestAPI apiName:@"tngou/info/news" withParams:@{@"id":@(0)}];
    [TestAPI apiName:@"tngou/info/news" withParams:@{@"id":@(0)} withAPIProxy:[TestAPIProxy class]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
