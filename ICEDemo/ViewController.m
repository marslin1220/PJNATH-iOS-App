//
//  ViewController.m
//  ICEDemo
//
//  Created by 林 政龍 on 2014/11/17.
//  Copyright (c) 2014年 marstudio. All rights reserved.
//

#import "ViewController.h"
#import "MLPjnath.h"
#import "SendDataViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextView *sdpTextView;
@property (weak, nonatomic) IBOutlet UIButton *iceNegotiateBtn;

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

- (IBAction)sdpSubmit:(UIButton *)sender {
  [self.mlPjnath setRemoteSdp:self.sdpTextView.text];
  [self.mlPjnath showIceSdp];

  [sender setHidden:true];
  [self.iceNegotiateBtn setHidden:false];
  [self.sdpTextView setEditable:false];
  [self.iceNegotiateBtn setEnabled:true];
}

- (IBAction)startIceNegotiate:(UIButton *)sender {
  [self.mlPjnath startIceNegotiate];
  [self.iceNegotiateBtn setHidden:true];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
  SendDataViewController *sendDataVC = (SendDataViewController *)segue.destinationViewController;
  sendDataVC.mlPjnath = self.mlPjnath;
}

@end
