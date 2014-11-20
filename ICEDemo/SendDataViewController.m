//
//  SendDataViewController.m
//  ICEDemo
//
//  Created by 林 政龍 on 2014/11/20.
//  Copyright (c) 2014年 marstudio. All rights reserved.
//

#import "SendDataViewController.h"

@interface SendDataViewController ()

@property (weak, nonatomic) IBOutlet UITextField *dataTextField;

@end

@implementation SendDataViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)sendData:(UIButton *)sender {
  [self.mlPjnath sendComponentWithData:self.dataTextField.text];
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
