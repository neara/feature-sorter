//
//  SSDAddFeatureViewController.m
//  FeatureSorter
//
//  Created by Ana Tr on 7/16/14.
//  Copyright (c) 2014 SSD. All rights reserved.
//

#import "SSDAddFeatureViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface SSDAddFeatureViewController ()

@end

@implementation SSDAddFeatureViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // Initialize the new feature and the classification logic
    self.feature = [SSDSingleFeature alloc];
    self.logic = [SSDClassificationLogic sharedClassificationLogic];

    [self updateValue:(int32_t)self.sliderFeatureEffort.value];
    [self updateEffort:(int32_t)self.sliderFeatureValue.value];
    
    // Update the background color of the description field
    [self.textFeatureDescription.layer setBackgroundColor:[[UIColor whiteColor] CGColor]];
    
    //To make the border look very close to a UITextField
    [self.textFeatureDescription.layer setBorderColor:[[[UIColor grayColor] colorWithAlphaComponent:0.5] CGColor]];
    [self.textFeatureDescription.layer setBorderWidth:0.5];
    
    //The rounded corner part, where you specify your view's corner radius:
    self.textFeatureDescription.layer.cornerRadius = 5;
    self.textFeatureDescription.clipsToBounds = YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)valueChanged:(UISlider*)sender
{
    float val = sender.value;
    int32_t intVal = (int32_t)val;
    
    [self updateValue:intVal];
}

- (IBAction)effortChanged:(UISlider*)sender
{
    float val = sender.value;
    int32_t intVal = (int32_t)val;
    
    [self updateEffort:intVal];
}

- (IBAction)statusChanged:(UISegmentedControl *)sender
{
    self.feature.status = sender.selectedSegmentIndex;
}

- (void) updateValue: (int32_t)newValue
{
    self.feature.value = newValue;
    self.labelFeatureValue.text = [NSString stringWithFormat:@"%d", newValue];

    self.feature.classification = [self.logic Classify: self.feature.value usingEffort:self.feature.effort];
    
    self.segmentedFeatureClassification.selectedSegmentIndex = self.feature.classification;
}

- (void) updateEffort: (int32_t)newEffort
{
    self.feature.effort = newEffort;
    self.labelFeatureEffort.text = [NSString stringWithFormat:@"%d", newEffort];
    
    self.feature.classification = [self.logic Classify: self.feature.value usingEffort:self.feature.effort];

    self.segmentedFeatureClassification.selectedSegmentIndex = self.feature.classification;
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
