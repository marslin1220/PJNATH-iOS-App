//
//  ViewController.m
//  ICEDemo
//
//  Created by 林 政龍 on 2014/11/17.
//  Copyright (c) 2014年 marstudio. All rights reserved.
//

#import "ViewController.h"
#import "MLPjnath.h"

@interface ViewController ()

@property MLPjnath *mlPjnath;

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];

  self.mlPjnath = [[MLPjnath alloc] init];
  [self.mlPjnath createInstance];
  [NSThread sleepForTimeInterval:3];
  [self.mlPjnath initSession:'o'];
  [self.mlPjnath showIceSdp];
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

@end
