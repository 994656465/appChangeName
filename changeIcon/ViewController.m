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
    [changeButton setTitle:@"切换支付宝" forState:UIControlStateNormal];
    [changeButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    changeButton.backgroundColor = [[UIColor blueColor] colorWithAlphaComponent:0.3];
    [changeButton addTarget:self action:@selector(changeZFBClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:changeButton];
    
    UIButton * twoButton  = [UIButton buttonWithType:UIButtonTypeCustom];
    twoButton.frame = CGRectMake(250, 200, 100, 100);
    [twoButton setTitle:@"智猪" forState:UIControlStateNormal];
    [twoButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    twoButton.backgroundColor = [[UIColor blueColor] colorWithAlphaComponent:0.3];
    [twoButton addTarget:self action:@selector(changeTwoClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:twoButton];
    
    
    UIButton *threeButton  = [UIButton buttonWithType:UIButtonTypeCustom];
    threeButton.frame = CGRectMake(100, 350, 100, 100);
    [threeButton setTitle:@"基因" forState:UIControlStateNormal];
    [threeButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    threeButton.backgroundColor = [[UIColor blueColor] colorWithAlphaComponent:0.3];
    [threeButton addTarget:self action:@selector(changeThreeClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:threeButton];
    
    UIButton *oriButton  = [UIButton buttonWithType:UIButtonTypeCustom];
    oriButton.frame = CGRectMake(100, 500, 100, 100);
    [oriButton setTitle:@"还原" forState:UIControlStateNormal];
    [oriButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    oriButton.backgroundColor = [[UIColor blueColor] colorWithAlphaComponent:0.3];
    [oriButton addTarget:self action:@selector(changeoriClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:oriButton];
    
    
}

-(void)changeZFBClick{

    [self changeAppIconWithName:@"zfb"];
}
-(void)changeTwoClick{

    [self changeAppIconWithName:@"zhizhu"];
}
-(void)changeThreeClick{

    [self changeAppIconWithName:@"jiyin"];

}
-(void)changeoriClick{

    [self changeAppIconWithName:@""];

}

- (void)changeAppIconWithName:(NSString *)iconName {
    if (![[UIApplication sharedApplication] supportsAlternateIcons]) {
        return;
    }
    
    if ([iconName isEqualToString:@""]) {
        iconName = nil;
    }
    [[UIApplication sharedApplication] setAlternateIconName:iconName completionHandler:^(NSError * _Nullable error) {
        if (error) {
            NSLog(@"更换app图标发生错误了 ： %@",error);
        }
    }];
}



@end
