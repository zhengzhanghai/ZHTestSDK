//
//  ViewController.m
//  ZHTestSDKDemo
//
//  Created by 郑章海 on 2020/5/22.
//  Copyright © 2020 zzh. All rights reserved.
//

#import "ViewController.h"
#import <ZHTestSDK/ZHTestSDK.h>
@import SDWebImage;

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    ZHImageView *imageView = [[ZHImageView alloc] initWithFrame:CGRectMake(100, 200, 200, 200)];
    [self.view addSubview:imageView];
    //    [imageView setLocalImage];
    // 这里第三方库在SDK内部和demo都能用
    //    [imageView setImageBySDWebImage];
    [imageView sd_setImageWithURL:[NSURL URLWithString:@"http://5b0988e595225.cdn.sohucs.com/images/20180108/9ff524a5910b4546a94d533c18b38eca.jpeg"]];
    //
}


@end
