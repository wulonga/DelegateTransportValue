//
//  ViewController.m
//  代理传值
//
//  Created by mac on 2018/7/3.
//  Copyright © 2018年 Gooou. All rights reserved.
//

#import "ViewController.h"
#import "VCBViewController.h"
@interface ViewController ()<vcBDeletegate>
@property (nonatomic, strong) UILabel *recievedLB;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _recievedLB = [[UILabel alloc] initWithFrame:CGRectMake(60, 250, 255, 30)];
    _recievedLB.text = @"prepare recieved data from VCB";
    _recievedLB.textAlignment = NSTextAlignmentCenter;
    _recievedLB.backgroundColor = [UIColor redColor];
    _recievedLB.textColor = [UIColor whiteColor];
    _recievedLB.font = [UIFont systemFontOfSize:14];
    [self.view addSubview:_recievedLB];
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(60, 300, 255, 40)];
    [btn setBackgroundColor:[UIColor lightGrayColor]];
    [btn setTitle:@"click Me To Jump VcB" forState:UIControlStateNormal];
    btn.titleLabel.font = [UIFont systemFontOfSize:14];
    btn.titleLabel.textAlignment = NSTextAlignmentCenter;
    [btn addTarget:self action:@selector(btnClicked) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    self.navigationItem.title = @"VCA";
}
#pragma mark-- 点击事件
-(void)btnClicked{
    VCBViewController *vb=[[VCBViewController alloc]init];
    vb.delegate=self;
    [self.navigationController pushViewController:vb animated:YES];
}
#pragma mark-- 代理受理函数
-(void)sendValue:(NSString *)value{
    _recievedLB.text=value;
}

@end














