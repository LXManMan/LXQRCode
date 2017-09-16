//
//  ViewController.m
//  LXQRCode
//
//  Created by zhongzhi on 2017/9/14.
//  Copyright © 2017年 漫漫. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong)NSArray *dataA;
@property(nonatomic,strong)NSArray *viewControllers;
@property(nonatomic,strong)UITableView *tableView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.navigationItem.title = @"二维码与图片处理";
    [self.view addSubview:self.tableView];
    
    
//    self.view.backgroundColor =[UIColor hexStringToColor:@"000000"];
//    UIButton *button =[UIButton buttonWithType:UIButtonTypeCustom];
//    [button setTitle:@"创建二维码" forState:UIControlStateNormal];
//    [button setTitleColor:[UIColor purpleColor] forState:UIControlStateNormal];
//    [button addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
//    
//    button.frame = CGRectMake((self.view.width -100)/2, 70, 100, 40);
//    [self.view addSubview:button];
//    
//    self.imageView =[[UIImageView alloc]initWithFrame:CGRectMake(80, 130, 200, 200)];
//    
//    [self.view addSubview:self.imageView];
//    
//    self.logoImageView =[[UIImageView alloc]initWithFrame:CGRectMake(80, 400, 200, 200)];
//    
//    [self.view addSubview:self.logoImageView];
//    
//    self.logoImageView.image = [[UIImage imageNamed:@"meitu"]scaleToSize:CGSizeMake(200, 200)];
    
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dataA.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell =[tableView dequeueReusableCellWithIdentifier:@""];
    if (!cell) {
        cell =[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@""];
    }
    
    cell.textLabel.text = self.dataA[indexPath.row];
    
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    Class class = NSClassFromString(self.viewControllers[indexPath.row]);
    
    [self.navigationController pushViewController:[class new] animated:YES];
}
-(UITableView *)tableView{
    if (!_tableView) {
        _tableView =[[UITableView alloc]initWithFrame:CGRectMake(0, 0, Device_Width, Device_Height) style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.showsVerticalScrollIndicator = NO;
        _tableView.showsHorizontalScrollIndicator=  NO;
        _tableView.tableFooterView =[UIView new];
    }
    return _tableView;
}
-(NSArray *)dataA{
    if (!_dataA) {
        _dataA = @[@"二维码生成",@"图片处理分类",@"二维码扫描"];
    }
    return _dataA;
}

-(NSArray *)viewControllers{
    if (!_viewControllers) {
        _viewControllers = @[@"LXQRController",@"LXPageDealController",@"LXScanningController"];
    }
    return _viewControllers;
}


@end
