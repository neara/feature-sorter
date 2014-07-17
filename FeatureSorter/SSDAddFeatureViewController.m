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
    UITextView *textFeatureDescription = [[UITextView alloc] initWithFrame:CGRectMake(50, 220, 200, 100)];
    
    //To make the border look very close to a UITextField
    [textView.layer setBorderColor:[[[UIColor grayColor] colorWithAlphaComponent:0.5] CGColor]];
    [textView.layer setBorderWidth:2.0];
    
    //The rounded corner part, where you specify your view's corner radius:
    textView.layer.cornerRadius = 5;
    textView.clipsToBounds = YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
