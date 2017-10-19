//
//  ViewController.m
//  CXMXTest003
//
//  Created by wapushidai on 16/11/11.
//  Copyright © 2016年 wapushidai. All rights reserved.
//

#import "ViewController.h"
#import "MJExtension.h"

#import <WebP_0_5_Public_hs.h>


@interface ViewController ()
@property (nonatomic,weak)UIImageView *testImageView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImageView *testImageView  = [[UIImageView alloc] initWithFrame:self.view.frame];
    [self.view addSubview:testImageView];
    self.testImageView = testImageView;
    
   
    
    [self performSelector:@selector(loadTestImage) withObject:nil afterDelay:2];
    
    //测试是否闪退
    [self NSArray_Test_InstanceArray];
    
    
    NSArray *ary = [NSArray array];
    NSString *obj = ary[100];
    NSLog(@"---index1OBject:%@",obj);
    
}


#pragma mark - NSArray_Test

- (void)NSArray_Test_InstanceArray {
    NSString *nilStr = nil;
    NSArray *array = @[@"chenfanfang", nilStr, @"iOSDeveloper"];
    NSLog(@"%@",array);
}


- (void)loadTestImage
{
    dispatch_async(dispatch_get_main_queue(), ^{
        
        NSString *imgSrc = @"http://img.news.mtdz.xiaohua.com/images/2179006/3f6fb225-438c-07c6-e840-a84b1963b4650.jpg/yingji";
        
        
        
        NSURL *url = [NSURL URLWithString: imgSrc];
        NSData *data = [NSData dataWithContentsOfURL: url];
        
        UIImage *image = [UIImage imageWithWebPData:data];
        
        self.testImageView.image = image;

        sleep(3);
        ViewController111 *v1 = [[ViewController111 alloc] init];
        [self.navigationController pushViewController:v1 animated:YES];
    });
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
