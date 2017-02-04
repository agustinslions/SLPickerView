//
//  ViewController.m
//  SLPickerView
//
//  Created by Agustin De Leon on 4/2/17.
//  Copyright © 2017 Agustin De Leon. All rights reserved.
//

#import "ViewController.h"
#import "SLPickerView.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *languageButton;
@property (weak, nonatomic) IBOutlet UIButton *soundButton;
@property (weak, nonatomic) IBOutlet UIButton *timerButton;
@property (weak, nonatomic) IBOutlet UIButton *numberButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)languageAction:(id)sender
{
    NSMutableArray *valuesArray = [NSMutableArray arrayWithArray:@[@"Español", @"English" , @"German", @"Italian"]];
    
    [SLPickerView showTextPickerViewWithValues:valuesArray
                                  withSelected:self.languageButton.currentTitle
                               completionBlock:^(NSString *selectedValue) {
                                   [self.languageButton setTitle:selectedValue forState:UIControlStateNormal];
                               }];
}

- (IBAction)soundAction:(id)sender
{
    NSString *activeString = NSLocalizedString(@"Active", @"");
    NSString *inactiveString = NSLocalizedString(@"Inactive", @"");
    
    NSMutableArray *valuesArray = [NSMutableArray arrayWithObjects:activeString, inactiveString, nil];
    
    [SLPickerView showTextPickerViewWithValues:valuesArray
                                  withSelected:[self.soundButton.currentTitle isEqualToString:activeString] ? activeString : inactiveString
                               completionBlock:^(NSString *selectedValue) {
                                   [self.soundButton setTitle:selectedValue forState:UIControlStateNormal];
                               }];
}

- (IBAction)timerAction:(id)sender
{
    NSMutableArray *valuesArray = [NSMutableArray arrayWithObjects:@(15),@(30),@(45),@(60),@(75),@(90),@(105),@(120) , nil];
    
    [SLPickerView showNumericalPickerViewWithValues:valuesArray
                                    withPreSelected:(int)[self.timerButton.currentTitle intValue]
                                    completionBlock:^(int selectedValue) {
                                        [self.timerButton setTitle:[@(selectedValue) stringValue]
                                                             forState:UIControlStateNormal];
                                    }];
}

- (IBAction)numberAction:(id)sender
{
    [SLPickerView showNumericalPickerViewWithMaxValue:20
                                         withMinValue:3
                                      withPreSelected:[self.numberButton.currentTitle intValue]
                                      completionBlock:^(int selectedValue) {
                                          [self.numberButton setTitle:[@(selectedValue) stringValue]
                                                               forState:UIControlStateNormal];
                                      }];
}


@end
