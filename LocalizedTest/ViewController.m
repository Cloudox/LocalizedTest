//
//  ViewController.m
//  LocalizedTest
//
//  Created by csdc-iMac on 15/9/23.
//  Copyright (c) 2015年 csdc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 使用NSLocalizedString来调用Localization文件中设置的内容实现本地化
    // 第一个参数是要显示的内容对应的key值，第二个参数是注释，暂时没发现有什么用
    self.locallizedLabel.text = NSLocalizedString(@"LabelText", nil);
    
    // 获取所支持的语言
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSArray *languages = [defaults objectForKey:@"AppleLanguages"];
    NSLog(@"%@", languages);
    
    // 获取当前使用的语言
    NSArray *preferredLanguages = [NSLocale preferredLanguages];
    NSString *currentLanguages = [preferredLanguages objectAtIndex:0];
    NSLog(@"Current Languages:%@", currentLanguages);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
