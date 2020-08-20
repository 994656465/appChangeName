//
//  ViewController.m
//  changeIcon
//
//  Created by mac on 2020/8/20.
//  Copyright © 2020 SmartPig. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIButton * changeButton  = [UIButton buttonWithType:UIButtonTypeCustom];
    changeButton.frame = CGRectMake(100, 200, 100, 100);
    [changeButton setTitle:@"切换图标" forState:UIControlStateNormal];
    [changeButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    changeButton.backgroundColor = [[UIColor blueColor] colorWithAlphaComponent:0.3];
    [changeButton addTarget:self action:@selector(changebuttonClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:changeButton];
}

-(void)changebuttonClick{
    // 判断可以更换
    if ([[UIApplication sharedApplication] supportsAlternateIcons]) {

         NSString *logoName = [[UIApplication sharedApplication] alternateIconName];
        if (logoName) {
            //         logoName 有值 设置nil ,切换默认图标
            
            [[UIApplication sharedApplication] setAlternateIconName:nil completionHandler:^(NSError * _Nullable error) {
                if (error) {
                    NSLog(@"更换失败%@",error);
                }else{
                    NSLog(@"更换成功");

                }
            }];
        }else{
//         logoName = nil 进行更换图标
            [[UIApplication sharedApplication] setAlternateIconName:@"zfb" completionHandler:^(NSError * _Nullable error) {
                if (error) {
                    NSLog(@"更换失败%@",error);
                }else{
                    NSLog(@"更换成功");
                }
            }];
        }
    }
}

@end
