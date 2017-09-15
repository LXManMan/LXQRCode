
//
//  LXBasicController.m
//  LXQRCode
//
//  Created by zhongzhi on 2017/9/15.
//  Copyright © 2017年 漫漫. All rights reserved.
//

#import "LXBasicController.h"

@interface LXBasicController ()

@end

@implementation LXBasicController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor =[UIColor whiteColor];
    self.automaticallyAdjustsScrollViewInsets = NO;
    self.extendedLayoutIncludesOpaqueBars = YES;
    
    self.imageView =[[UIImageView alloc]initWithFrame:CGRectMake(80, 200, Device_Width-160, Device_Width-160)];
    [self.view addSubview:self.imageView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
