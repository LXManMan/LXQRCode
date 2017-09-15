//
//  LXCustomRadiousController.m
//  LXQRCode
//
//  Created by zhongzhi on 2017/9/15.
//  Copyright © 2017年 漫漫. All rights reserved.
//

#import "LXCustomRadiousController.h"

@interface LXCustomRadiousController ()

@end

@implementation LXCustomRadiousController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor =[UIColor hexStringToColor:@"000000"];
    self.imageView.image =[UIImage LX_ClipImageWithImage:[UIImage imageNamed:@"meitu"] circleRect:self.imageView.bounds radious:15];
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
