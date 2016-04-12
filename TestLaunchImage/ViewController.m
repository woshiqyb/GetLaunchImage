//
//  ViewController.m
//  TestLaunchImage
//
//  Created by qianyb on 16/4/11.
//  Copyright © 2016年 qianyb. All rights reserved.
//

#import "ViewController.h"
#import "LaunchImagesUtil.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIImage *image = [LaunchImagesUtil launchImage];
    self.view.backgroundColor = [[UIColor alloc] initWithPatternImage:image];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
