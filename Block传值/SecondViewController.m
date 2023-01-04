//
//  SecondViewController.m
//  Block传值
//
//  Created by 翟旭博 on 2022/8/2.
//

#import "SecondViewController.h"
#import "FirstViewController.h"
@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor systemPinkColor];
    
    _button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [_button addTarget:self action:@selector(pressback) forControlEvents:UIControlEventTouchUpInside];
    _button.frame = CGRectMake(0, 0, 200, 200);
    [_button setTitle:@"返回" forState:UIControlStateNormal];
    [self.view addSubview:_button];
    
    _string = [NSString stringWithFormat:@"iOS"];
}

- (void)pressback {
    _newblock(_string);
    [self dismissViewControllerAnimated:YES completion:nil];
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
