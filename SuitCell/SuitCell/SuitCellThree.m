//
//  SuitCellThree.m
//  SuitCell
//
//  Created by lanou3g on 15/12/26.
//  Copyright © 2015年 吴文涛. All rights reserved.
//

#import "SuitCellThree.h"

@implementation SuitCellThree

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self setView];
    }
    return self;
}

- (void)setView{
    self.text = [[UILabel alloc] initWithFrame:CGRectMake(0, 0,350, 100)];
    self.text.font = [UIFont systemFontOfSize:18];
    self.text.numberOfLines = 0;
    [self.contentView addSubview:self.text];
}

- (void)setModel:(Model *)model{
    _model = model;
    self.text.text = model.content;
    
    CGSize size = CGSizeMake(350, 20000);
    NSDictionary *dic = @{NSFontAttributeName:[UIFont systemFontOfSize:18]};
    CGRect rect = [model.content boundingRectWithSize:size options:NSStringDrawingUsesFontLeading|NSStringDrawingUsesLineFragmentOrigin attributes:dic context:nil];
    
    CGRect frame = self.text.frame;
    frame.size = rect.size;
    self.text.frame = frame;
    
}

+ (CGFloat)heightForCell:(NSString *)str{
    CGSize size = CGSizeMake(350, 20000);
    
    NSDictionary *dic = @{NSFontAttributeName:[UIFont systemFontOfSize:18]};
    
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
