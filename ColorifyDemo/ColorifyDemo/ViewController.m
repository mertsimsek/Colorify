//
//  ViewController.m
//  ColorifyDemo
//
//  Created by Orhun Mert Şimşek on 14/01/16.
//  Copyright © 2016 4pps. All rights reserved.
//

#import "ViewController.h"
#import "NSString+Colorify.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSString *string = @"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer a interdum mi, eget malesuada magna.";
    
    NSArray *arr = @[[UIColor redColor],[UIColor greenColor]];
    
    NSAttributedString *str = [string colorifyIt:arr randomized:NO];
    
    UILabel *lbl = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 300, 100)];
    lbl.numberOfLines = 0;
    lbl.attributedText = str;
    [self.view addSubview:lbl];
    
    
    str = [string colorifyIt:arr randomized:YES];
    UILabel *lbl2 = [[UILabel alloc] initWithFrame:CGRectMake(0, 100, 300, 100)];
    lbl2.numberOfLines = 0;
    lbl2.attributedText = str;
    [self.view addSubview:lbl2];
    
    
    str = [string rainbowColorifyIt];
    UILabel *lbl3 = [[UILabel alloc] initWithFrame:CGRectMake(0, 200, 300, 100)];
    lbl3.numberOfLines = 0;
    lbl3.attributedText = str;
    [self.view addSubview:lbl3];
    
    
    str = [string randomColorifyIt];
    UILabel *lbl4 = [[UILabel alloc] initWithFrame:CGRectMake(0, 300, 300, 100)];
    lbl4.numberOfLines = 0;
    lbl4.attributedText = str;
    [self.view addSubview:lbl4];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
