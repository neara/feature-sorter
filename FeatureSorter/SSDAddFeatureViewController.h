//
//  SSDAddFeatureViewController.h
//  FeatureSorter
//
//  Created by Ana Tr on 7/16/14.
//  Copyright (c) 2014 SSD. All rights reserved.
//

#import <UIKit/UIKit.h>
#include "SSDFeature.h"
#include "SSDClassificationLogic.h"

@interface SSDAddFeatureViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *textFeatureName;
@property (weak, nonatomic) IBOutlet UITextView *textFeatureDescription;

@property (weak, nonatomic) IBOutlet UILabel *labelFeatureValue;
@property (weak, nonatomic) IBOutlet UILabel *labelFeatureEffort;

@property (weak, nonatomic) IBOutlet UISlider *sliderFeatureValue;
@property (weak, nonatomic) IBOutlet UISlider *sliderFeatureEffort;

@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedFeatureClassification;
@property (weak, nonatomic) IBOutlet UIToolbar *toolbarKeyboard;

@property (strong, nonatomic) SSDFeature *feature;
@property (strong, nonatomic) SSDClassificationLogic *logic;

- (IBAction)valueChanged:(UISlider*)sender;
- (IBAction)effortChanged:(UISlider*)sender;
- (IBAction)statusChanged:(UISegmentedControl *)sender;
- (IBAction)doneWithKeyboardPressed:(UIBarButtonItem *)sender;

- (void) updateValue: (int32_t)newValue;
- (void) updateEffort: (int32_t)newEffort;

@end
