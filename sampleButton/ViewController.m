//
//  ViewController.m
//  sampleButton
//
//  Created by satoutakeshi on 2014/05/01.
//  Copyright (c) 2014年 satoutakeshi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)changeSex:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIButton *manButton;
@property (weak, nonatomic) IBOutlet UIButton *womanButton;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.manButton.selected = YES;
    self.womanButton.selected = NO;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)changeSex:(UIButton *)sender {
    
    if (sender == self.manButton) {
        self.manButton.selected = YES;
        self.womanButton.selected = NO;
        
    }else if (sender == self.womanButton){
        self.manButton.selected = NO;
        self.womanButton.selected = YES;
    }
    self.label.text = [NSString stringWithFormat:@"あなたの性別は%@です。",sender.titleLabel.text];
    
    
}
@end
