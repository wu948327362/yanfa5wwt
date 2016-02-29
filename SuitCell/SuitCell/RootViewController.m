//
//  RootViewController.m
//  SuitCell
//
//  Created by lanou3g on 15/12/26.
//  Copyright © 2015年 吴文涛. All rights reserved.
//

#import "RootViewController.h"
#import "Model.h"
#import "SuitCellOne.h"
#import "SuitCellTwo.h"
#import "SuitCellThree.h"
#import "SuitCell.h"
#import "SuitCellFive.h"

@interface RootViewController ()<UITableViewDataSource,UITableViewDelegate>

@end

@implementation RootViewController

- (void)loadView{
    [super loadView];
    self.rv = [[RootView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    self.view = self.rv;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.rv.tableView.delegate = self;
    self.rv.tableView.dataSource = self;
    [self makeData];
}

- (void)makeData{
    self.data = [NSMutableArray array];
    
    Model *m1 = [[Model alloc] init];
    m1.content = @"法核算法兰克福SD卡疯狂的缩放结束发到手机附近的时刻看风景的思考了几分快乐是对方考虑的时空裂缝是大家交罚款的说法是对方的思考了类似的交罚款的手机发送的旅客发生的";
    [self.data addObject:m1];
    
    Model *m2 = [[Model alloc] init];
    m2.content = @"dasdasdasdasdasda";
    [self.data addObject:m2];
    
    Model *m3 = [[Model alloc] init];
    m3.content = @"你是我的你是我的你是我的你是我的你是我的你是我的你是我的你是我的你是我的你是我的你是我的你是我的你是我的你是我的你是我的你是我的你是我的你是我的你是我的你是我的你是我的你是我的你是我的你是我的";
    [self.data addObject:m3];
    
    Model *m4 = [[Model alloc] init];
    m4.content = @"他他他他他他爱他爱他爱他爱他他他他他他他他他他他他他他爱他爱他爱他爱他他他他他他他他他他他他他他爱他爱他爱他爱他他他他他他他他他他他他他他爱他爱他爱他爱他他他他他他他他";
    [self.data addObject:m4];
    
    Model *m5 = [[Model alloc] init];
    m5.content = @"台台台胎体台台台台台台台台台台台";
    [self.data addObject:m5];
    
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.data.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    //SuitCellOne *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    //SuitCellTwo *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    //SuitCellTwo *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    //SuitCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    SuitCellFive *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (cell==nil) {
        cell = [[SuitCellFive alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"cell"];
    }
    //NSLog(@"%@",[self.data[indexPath.row] content]);
    Model *m = self.data[indexPath.row];
    cell.model = m;
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString *str = [self.data[indexPath.row] content];
    return [SuitCellFive height:str];
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
