//
//  LXQRController.m
//  LXQRCode
//
//  Created by zhongzhi on 2017/9/15.
//  Copyright © 2017年 漫漫. All rights reserved.
//

#import "LXQRController.h"

@interface LXQRController ()
@property(nonatomic,strong)NSArray *dataA;
@property(nonatomic,strong)NSArray *viewControllers;

@end

@implementation LXQRController

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
        _dataA = @[@"普通二维码",@"带图片的二维码"];
    }
    return _dataA;
}

-(NSArray *)viewControllers{
    if (!_viewControllers) {
        _viewControllers = @[@"CommonQTRontroller",@"imageQRController"];
    }
    return _viewControllers;
}

@end
