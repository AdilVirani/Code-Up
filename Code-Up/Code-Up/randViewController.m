//
//  randViewController.m
//  Code-Up
//
//  Created by Adil  Virani on 2/8/15.
//  Copyright (c) 2015 Adil  Virani. All rights reserved.
//

#import "randViewController.h"

@interface randViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIButton *button;
@property (weak, nonatomic) IBOutlet UIButton *button2;
@property (weak, nonatomic) IBOutlet UIButton *button3;
@property (weak, nonatomic) IBOutlet UIButton *button4;
@property (weak, nonatomic) IBOutlet UIButton *button5;
@property (weak, nonatomic) IBOutlet UIButton *button6;
@property (weak, nonatomic) IBOutlet UIButton *button7;
@property (weak, nonatomic) IBOutlet UIButton *button8;
@property (weak, nonatomic) IBOutlet UIButton *button9;

@end

@implementation randViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
     self.scrollView.contentSize =CGSizeMake(320, 700);
    
    [self.button setClipsToBounds:YES];
    [self.button.layer setCornerRadius:self.button.frame.size.width/2];
    [self.button2 setClipsToBounds:YES];
    [self.button2.layer setCornerRadius:self.button.frame.size.width/2];
    [self.button3 setClipsToBounds:YES];
    [self.button3.layer setCornerRadius:self.button.frame.size.width/2];
    [self.button4 setClipsToBounds:YES];
    [self.button4.layer setCornerRadius:self.button.frame.size.width/2];
    [self.button5 setClipsToBounds:YES];
    [self.button5.layer setCornerRadius:self.button.frame.size.width/2];
    [self.button6 setClipsToBounds:YES];
    [self.button6.layer setCornerRadius:self.button.frame.size.width/2];
    [self.button7 setClipsToBounds:YES];
    [self.button7.layer setCornerRadius:self.button.frame.size.width/2];
    [self.button8 setClipsToBounds:YES];
    [self.button8.layer setCornerRadius:self.button.frame.size.width/2];
    [self.button9 setClipsToBounds:YES];
    [self.button9.layer setCornerRadius:self.button.frame.size.width/2];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPushed:(id)sender {
    UIButton *senderButton = sender;
    [senderButton setSelected:!senderButton.isSelected];
    
    if (senderButton.isSelected) {
        [senderButton setBackgroundColor:[UIColor darkGrayColor]];
    }else{
        [senderButton setBackgroundColor:[UIColor lightGrayColor]];
    }
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
