//
//  SuitCellThree.h
//  SuitCell
//
//  Created by lanou3g on 15/12/26.
//  Copyright © 2015年 吴文涛. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Model.h"

@interface SuitCellThree : UITableViewCell
@property(nonatomic,strong)UILabel *text;
@property(nonatomic,strong)Model *model;

+ (CGFloat)heightForCell:(NSString *)str;
@end
