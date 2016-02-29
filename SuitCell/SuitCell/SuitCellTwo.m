//
//  SuitCellTwo.m
//  SuitCell
//
//  Created by lanou3g on 15/12/26.
//  Copyright © 2015年 吴文涛. All rights reserved.
//

#import "SuitCellTwo.h"

@implementation SuitCellTwo

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self setView];
    }
    return  self;
}

- (void)setView{
    self.label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, CGRectGetWidth([UIScreen mainScreen].bounds), 100)];
    self.label.font = [UIFont systemFontOfSize:20];
    self.label.numberOfLines = 0;
    [self.contentView addSubview:self.label];
}

- (void)setModel:(Model *)model{
    _model = model;
    
    self.label.text = model.content;
    
    CGSize size = CGSizeMake(CGRectGetWidth([UIScreen mainScreen].bounds), 20000);
    NSDictionary *dic = @{NSFontAttributeName:[UIFont systemFontOfSize:20]};
    CGRect rect = [model.content boundingRectWithSize:size options:NSStringDrawingUsesFontLeading|NSStringDrawingUsesLineFragmentOrigin attributes:dic context:nil];
    
    CGRect frame = self.label.frame;
    frame.size = rect.size;
    self.label.frame = frame;
    
    
}

+ (CGFloat)heightForCell:(NSString *)str{
    CGSize size = CGSizeMake(CGRectGetWidth([UIScreen mainScreen].bounds), 2000);
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
