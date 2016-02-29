//
//  SuitCell.m
//  SuitCell
//
//  Created by lanou3g on 15/12/26.
//  Copyright © 2015年 吴文涛. All rights reserved.
//

#import "SuitCell.h"

@implementation SuitCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self setView];
    }
    return self;
}


- (void)setView{
    self.info = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, CGRectGetWidth([UIScreen mainScreen].bounds), 100)];
    self.info.numberOfLines = 0;
    self.info.font = [UIFont systemFontOfSize:20];
    [self.contentView addSubview:self.info];
    
}

- (void)setModel:(Model *)model{
    _model = model;
    
    self.info.text = model.content;
    
    CGSize size = CGSizeMake(CGRectGetWidth([UIScreen mainScreen].bounds), 20000);
    NSDictionary *dic = @{NSFontAttributeName:[UIFont systemFontOfSize:20]};
    
    CGRect rect = [model.content boundingRectWithSize:size options:NSStringDrawingUsesFontLeading|NSStringDrawingUsesLineFragmentOrigin attributes:dic context:nil];
    
    CGRect frame = self.info.frame;
    frame.size = rect.size;
    self.info.frame = frame;
    
    
//    _model = model;
//    
//    self.info.text = model.content;
//    
//    CGSize size = CGSizeMake(CGRectGetWidth([UIScreen mainScreen].bounds), 20000);
//    
//    NSDictionary *dic = @{NSFontAttributeName:[UIFont systemFontOfSize:20]};
//    
//    CGRect rect = [model.content boundingRectWithSize:size options:NSStringDrawingUsesFontLeading|NSStringDrawingUsesLineFragmentOrigin attributes:dic context:nil];
//    
//    CGRect frame = self.info.frame;
//    frame.size = rect.size;
//    self.info.frame = frame;
    
}

+ (CGFloat)height:(NSString *)str{
    CGSize size = CGSizeMake(CGRectGetWidth([UIScreen mainScreen].bounds), 20000);
    
    NSDictionary *dic = @{NSFontAttributeName:[UIFont systemFontOfSize:20]};
    CGRect rect = [str boundingRectWithSize:size options:NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading attributes:dic context:nil];
    
    return rect.size.height;
    
    
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
