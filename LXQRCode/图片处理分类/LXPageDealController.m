//
//  LXPageDealController.m
//  LXQRCode
//
//  Created by zhongzhi on 2017/9/15.
//  Copyright © 2017年 漫漫. All rights reserved.
//

#import "LXPageDealController.h"

@interface LXPageDealController ()

@property(nonatomic,strong)NSArray *dataA;
@property(nonatomic,strong)NSArray *viewControllers;

@end

@implementation LXPageDealController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataA.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell =[tableView dequeueReusableCellWithIdentifier:@""];
    if (!cell) {
        cell =[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@""];
    }
    
    cell.textLabel.text = self.dataA[indexPath.row];
    
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    Class class = NSClassFromString(self.viewControllers[indexPath.row]);
    
    UIViewController *vc  =  [class new];
    vc.navigationItem.title = self.dataA[indexPath.row];
    
    [self.navigationController pushViewController:vc  animated:YES];
}
-(NSArray *)dataA{
    if (!_dataA) {
        _dataA = @[@"圆形裁剪",@"圆形裁剪带边框",@"自定义图片圆角",@"自定义图片边框圆角",@"图片添加水印"];
    }
    return _dataA;
}

-(NSArray *)viewControllers{
    if (!_viewControllers) {
        _viewControllers = @[@"LXCircleImgeController",@"LXCircleBorderController",@"LXCustomRadiousController",@"LXCustomRadiousBorderController",@"LXWaterImageController"];
    }
    return _viewControllers;
}
@end
