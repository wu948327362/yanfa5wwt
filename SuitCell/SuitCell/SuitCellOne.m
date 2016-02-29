//
//  SuitCellOne.m
//  SuitCell
//
//  Created by lanou3g on 15/12/26.
//  Copyright © 2015年 吴文涛. All rights reserved.
//

#import "SuitCellOne.h"

@implementation SuitCellOne

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self setView];
    }
    return self;
}

- (void)setView{
    self.content = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 300, 200)];
    self.content.numberOfLines = 0;
    self.content.font = [UIFont systemFontOfSize:15];
    [self.contentView addSubview:self.content];
}

- (void)setModel:(Model *)model{
    _model = model;

    self.content.text = model.content;
    //NSLog(@"%@",self.content.text);
    
    CGSize size = CGSizeMake(300, 20000);
    
    NSDictionary *dic = @{NSFontAttributeName:[UIFont systemFontOfSize:15]};
    CGRect rect = [model.content boundingRectWithSize:size options:NSStringDrawingUsesFontLeading|NSStringDrawingUsesLineFragmentOrigin attributes:dic context:nil];
    
    CGRect frame = self.content.frame;
    frame.size = rect.size;
    self.content.frame = frame;
    
}

+ (CGFloat)heightForCell:(NSString *)str{
    CGSize size = CGSizeMake(300, 20000);
    NSDictionary *dic = @{NSFontAttributeName:[UIFont systemFontOfSize:15]};
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
