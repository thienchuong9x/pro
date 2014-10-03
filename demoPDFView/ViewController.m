//
//  ViewController.m
//  demoPDFView
//
//  Created by chuongntt on 10/2/14.
//  Copyright (c) 2014 chuongntt. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSString *path= [[NSBundle mainBundle] pathForResource:@"KET - CUP 2 (book)" ofType:@"pdf"];
    NSURL *url= [NSURL fileURLWithPath:path];
    NSURLRequest *req = [NSURLRequest requestWithURL:url];
    [_WebviewPDF loadRequest:req ];
    [_WebviewPDF setScalesPageToFit:NO];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
