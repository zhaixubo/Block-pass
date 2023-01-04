//
//  FirstViewController.m
//  Block传值
//
//  Created by 翟旭博 on 2022/8/2.
//

#import "FirstViewController.h"
#import "SecondViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _label = [[UILabel alloc] initWithFrame:CGRectMake(200, 200, 100, 100)];
    [self.view addSubview:_label];
    self.view.backgroundColor = [UIColor orangeColor];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button addTarget:self action:@selector(pressgo) forControlEvents:UIControlEventTouchUpInside];
    button.frame = CGRectMake(0, 0, 200, 200);
    [button setTitle:@"进入" forState:UIControlStateNormal];
    [self.view addSubview:button];
}

- (void)pressgo {
    SecondViewController *viewcontroller = [[SecondViewController alloc] init];
    viewcontroller.modalPresentationStyle = UIModalPresentationFullScreen;
    
    [viewcontroller setNewblock:^(NSString *string) {
        self->_label.text = string;
    }];
    
    [self presentViewController:viewcontroller animated:YES completion:nil];
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
