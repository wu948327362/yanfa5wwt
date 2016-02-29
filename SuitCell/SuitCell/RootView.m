//
//  RootView.m
//  SuitCell
//
//  Created by lanou3g on 15/12/26.
//  Copyright © 2015年 吴文涛. All rights reserved.
//

#import "RootView.h"

@implementation RootView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setView];
    }
    return self;
}

- (void)setView{
    self.backgroundColor = [UIColor cyanColor];
    
    self.tableView = [[UITableView alloc] initWithFrame:[UIScreen mainScreen].bounds style:UITableViewStyleGrouped];
    [self addSubview:self.tableView];
    
}

@end
