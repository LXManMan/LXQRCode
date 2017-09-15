//
//  LXWaterImageController.m
//  LXQRCode
//
//  Created by zhongzhi on 2017/9/15.
//  Copyright © 2017年 漫漫. All rights reserved.
//

#import "LXWaterImageController.h"

@interface LXWaterImageController ()

@end

@implementation LXWaterImageController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.imageView.image =[UIImage LX_WaterImageWithImage:[UIImage imageNamed:@"meitu"] waterImage:[UIImage imageNamed:@"btn_touxiang_da"] waterImageRect:CGRectMake(30, 30, 50, 50)];
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
