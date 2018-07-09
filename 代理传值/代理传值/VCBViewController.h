//
//  VCBViewController.h
//  代理传值
//
//  Created by mac on 2018/7/3.
//  Copyright © 2018年 Gooou. All rights reserved.
//

#import <UIKit/UIKit.h>

//创建协议
@protocol vcBDeletegate<NSObject>

-(void)sendValue:(NSString*)value;

@end



@interface VCBViewController : UIViewController
@property (nonatomic,weak) id<vcBDeletegate> delegate;
@end

















