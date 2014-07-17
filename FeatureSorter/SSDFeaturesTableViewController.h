//
//  SSDFeaturesTableViewController.h
//  FeatureSorter
//
//  Created by Ana Tr on 7/16/14.
//  Copyright (c) 2014 SSD. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SSDSingleFeature.h"

@interface SSDFeaturesTableViewController : UITableViewController

// set cancel button from addFeatureView to redirect to FeaturesTableView
- (IBAction)unwindToList:(UIStoryboardSegue *)segue;

@end
