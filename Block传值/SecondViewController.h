//
//  SecondViewController.h
//  Block传值
//
//  Created by 翟旭博 on 2022/8/2.
//

#import "ViewController.h"

NS_ASSUME_NONNULL_BEGIN
//定义一个代码块，传值参数可以为多个
typedef void(^block)(NSString *string);

@interface SecondViewController : ViewController

@property (nonatomic, strong) NSString *string;
@property (nonatomic, strong) UIButton *button;

//定义一个block属性
@property (nonatomic, copy) block newblock;

@end

NS_ASSUME_NONNULL_END
