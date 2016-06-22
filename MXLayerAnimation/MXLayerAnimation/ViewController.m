//
//  ViewController.m
//  MXLayerAnimation
//
//  Created by 谢鹏翔 on 16/6/19.
//  Copyright © 2016年 ime. All rights reserved.
//

#import "ViewController.h"
#import "MXAnimationView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    MXAnimationView *animationView = [[MXAnimationView alloc] initWithFrame:self.view.bounds];
//    animationView.backgroundColor = [UIColor purpleColor];
//    [animationView ]
    [self.view addSubview:animationView];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
