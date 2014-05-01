//
//  ViewController.m
//  sampleButton
//
//  Created by satoutakeshi on 2014/05/01.
//  Copyright (c) 2014年 satoutakeshi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *selectSex;
- (IBAction)changeSex:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)changeSex:(UIButton *)sender {
    if (sender.selected) {
        NSLog(@"%@",sender.titleLabel.text);
        sender.selected = NO;
        self.label.text = [NSString stringWithFormat:@"あなたの性別は%@です。",sender.titleLabel.text];
    }else if(sender.selected == NO)
    {
        NSLog(@"女です。");
        sender.selected = YES;
        self.label.text = @"あなたの性別は女です。";
    }
}
@end
