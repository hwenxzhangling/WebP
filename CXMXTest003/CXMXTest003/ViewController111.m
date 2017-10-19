//
//  ViewController111.m
//  CXMXTest003
//
//  Created by wapushidai on 16/11/14.
//  Copyright © 2016年 wapushidai. All rights reserved.
//

#import "ViewController111.h"

@interface ViewController111 ()

@end

@implementation ViewController111

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor brownColor];
    
    NSArray *ary = [NSArray array];
    NSString *obj = ary[100];
    NSLog(@"---index1OBject:%@",obj);
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
