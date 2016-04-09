//
//  ViewController.m
//  HandleAnimationDemo
//
//  Created by ZengYong on 16/4/8.
//  Copyright © 2016年 maipu. All rights reserved.
//

#import "ViewController.h"
#import "HAHandleDemoView.h"

@interface ViewController ()<HAHandleDemoViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    CGFloat screenWidth = [[UIScreen mainScreen] bounds].size.width;
    
    CGFloat btnWidth = 100.f;
    CGFloat btnHeight = 30.f;
    
    HAHandleDemoView *view1 = [[HAHandleDemoView alloc]initWithFrame:CGRectMake((screenWidth-btnWidth)*0.5, 100, btnWidth, btnHeight)];
    view1.delegate = self;
    [self.view addSubview:view1];
    
    HAHandleDemoView *view2 = [[HAHandleDemoView alloc]initWithFrame:CGRectMake((screenWidth-btnWidth)*0.25, 200, btnWidth, btnHeight)];
    [self.view addSubview:view2];
    
    HAHandleDemoView *view3 = [[HAHandleDemoView alloc]initWithFrame:CGRectMake((screenWidth-btnWidth)*0.75, 200, btnWidth, btnHeight)];
    [self.view addSubview:view3];
    
    HAHandleDemoView *view4 = [[HAHandleDemoView alloc]initWithFrame:CGRectMake((screenWidth-btnWidth)*0.25, 500, btnWidth, btnHeight)];
    [self.view addSubview:view4];
    
    HAHandleDemoView *view5 = [[HAHandleDemoView alloc]initWithFrame:CGRectMake((screenWidth-btnWidth)*0.75, 500, btnWidth, btnHeight)];
    [self.view addSubview:view5];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - HAHandleDemoViewDelegate
- (void)animationCompleted{
    NSLog(@"Animation comeplete!");
}

@end
