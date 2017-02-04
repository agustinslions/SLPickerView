//
//  SLPickerView.h
//  Picker
//
//  Created by Agustin De Leon on 3/8/15.
//  Copyright (c) 2015 Agustin De Leon. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, SLPickerViewType) {
    SLNumbersPickerView,
    SLTextPickerView,
};

@interface SLPickerView : UIView

+ (void)showNumericalPickerViewWithMaxValue:(int)maxValue
                               withMinValue:(int)minValue
                            withPreSelected:(int)preSelected
                            completionBlock:(void (^)(int selectedValue))completionBlock;

+ (void)showNumericalPickerViewWithMaxValue:(int)maxValue
                               withMinValue:(int)minValue
                            completionBlock:(void (^)(int selectedValue))completionBlock;

+ (void)showNumericalPickerViewWithValues:(NSMutableArray *)values
                          completionBlock:(void (^)(int selectedValue))completionBlock;

+ (void)showNumericalPickerViewWithValues:(NSMutableArray *)values
                          withPreSelected:(int)preSelected
                          completionBlock:(void (^)(int selectedValue))completionBlock;

+ (void)showTextPickerViewWithValues:(NSMutableArray *)values
                     completionBlock:(void (^)(NSString *selectedValue))completionBlock;

+ (void)showTextPickerViewWithValues:(NSMutableArray *)values
                        withSelected:(NSString *)selected
                     completionBlock:(void (^)(NSString *selectedValue))completionBlock;

@end
