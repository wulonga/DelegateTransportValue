//
//  VCBViewController.m
//  代理传值
//
//  Created by mac on 2018/7/3.
//  Copyright © 2018年 Gooou. All rights reserved.
//

#import "VCBViewController.h"

@interface VCBViewController ()
@property (nonatomic,strong) UITextField *tx;
@end

@implementation VCBViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor whiteColor];
    self.navigationItem.title=@"VCB";
    
    _tx=[[UITextField alloc]initWithFrame:CGRectMake(100, 250, 175, 30)];
    _tx.borderStyle=UITextBorderStyleRoundedRect;
    _tx.backgroundColor=[UIColor whiteColor];
    _tx.font=[UIFont systemFontOfSize:14];
    _tx.textColor=[UIColor darkGrayColor];
    _tx.textAlignment=NSTextAlignmentCenter;
    [self.view addSubview:self.tx];
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(60, 300, 255, 40)];
    [btn setBackgroundColor:[UIColor lightGrayColor]];
    [btn setTitle:@"send message to VCA" forState:UIControlStateNormal];
    btn.titleLabel.font = [UIFont systemFontOfSize:14];
    btn.titleLabel.textAlignment = NSTextAlignmentCenter;
    [btn addTarget:self action:@selector(backActionClicked) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}

- (void)backActionClicked
{
    //当代理响应sendValue方法时候，进行传值
    if ([_delegate respondsToSelector:@selector(sendValue:)]) {
        [_delegate sendValue:_tx.text];
        [self.navigationController popViewControllerAnimated:YES];
    }
}






















/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
