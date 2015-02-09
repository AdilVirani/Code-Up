//
//  DEMOFourthViewController.m
//  Code-Up
//
//  Created by Adil  Virani on 2/8/15.
//  Copyright (c) 2015 Adil  Virani. All rights reserved.
//

#import "DEMOFourthViewController.h"
#import <CoreLocation/CoreLocation.h>


@interface DEMOFourthViewController (){
    NSArray *_pickerData;
}

@property (weak, nonatomic) IBOutlet UIDatePicker *time;
@property (weak, nonatomic) IBOutlet UIPickerView *pickhack;
@property (weak, nonatomic) IBOutlet UIPickerView *picktime;
@end

@implementation DEMOFourthViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Initialize Data
    _pickerData = @[@"Delete", @"12:00AM-12:30AM", @"12:30AM-1:00AM", @"1:00AM-1:30AM", @"1:30AM-2:00AM", @"2:00AM-2:30AM", @"2:30AM-3:00AM",@"3:30AM-4:00AM",@"4:30AM-5:00AM",@"6:30AM-7:00AM",@"7:30AM-8:00AM",@"8:30AM-9:00AM",@"9:30AM-10:00AM",@"10:30AM-11:00AM",@"11:30AM-12:00PM",@"12:30PM-1:00PM",@"1:30PM-2:00PM",@"2:30PM-3:00PM",@"3:30PM-4:00PM",@"5:30PM-6:00PM",@"6:30PM-7:00PM"];
    self.pickhack.dataSource = self;
    self.pickhack.delegate = self;
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// The number of columns of data
- (int)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

// The number of rows of data
- (int)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return _pickerData.count;
}


// The data to return for the row and component (column) that's being passed in
- (NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return _pickerData[row];

}

@end

