//
//  ViewController.m
//  TestRTC
//
//  Created by Art on 12.06.2015.
//  Copyright (c) 2015 Polbyte. All rights reserved.
//

#import "ViewController.h"
#import "RTCPeerConnectionFactory.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [RTCPeerConnectionFactory initializeSSL];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
