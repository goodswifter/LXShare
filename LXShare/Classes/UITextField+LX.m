//
//  UITextField+LX.m
//  LXShare_Example
//
//  Created by Song on 2020/7/20.
//  Copyright © 2020 hfdz1011. All rights reserved.
//

#import "UITextField+LX.h"

@implementation UITextField (LX)
/// UITextField初始化
/// @param placeString 虚拟文案
/// @param color 文字颜色
/// @param font 文字字体
/// @param placeColor 虚拟文字颜色
/// @param placeFont 虚拟文字字体
+ (UITextField *)lx_initTextFiledWithPlace:(NSString *)placeString withColor:(UIColor *)color withFont:(UIFont *)font  withPlacecolor:(UIColor *)placeColor withplaceFont:(UIFont *)placeFont
{
    UITextField *filed = [[UITextField alloc]init];
    filed.font = font;
    filed.textColor = color;
    filed.attributedPlaceholder = [[NSAttributedString alloc] initWithString:placeString
                                                                  attributes:@{NSForegroundColorAttributeName: placeColor,NSFontAttributeName:placeFont}];
    return filed;
}
/// UITextField 设置虚拟文字的颜色和字体
/// @param filed UITextField
/// @param place 虚拟文字的文案
/// @param color 颜色
/// @param font 字体
+ (UITextField *)lx_setTextFiled:(UITextField *)filed withPlace:(NSString *)place withPlaceColor:(UIColor *)color withFont:(UIFont *)font
{
    filed.attributedPlaceholder = [[NSAttributedString alloc] initWithString:place attributes:@{NSForegroundColorAttributeName: color,NSFontAttributeName:font}];
    return filed;
}

@end
