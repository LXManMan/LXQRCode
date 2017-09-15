//
//  CommonQTRontroller.m
//  LXQRCode
//
//  Created by zhongzhi on 2017/9/15.
//  Copyright © 2017年 漫漫. All rights reserved.
//

#import "CommonQTRontroller.h"

@interface CommonQTRontroller ()

@end

@implementation CommonQTRontroller

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIImage *image =[UIImage LX_ImageOfQRFromURL:@"http://www.jianshu.com/u/3d7c50f31b88" codeSize:self.imageView.frame.size.width];
    
    self.imageView.image =image;
    
    
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
