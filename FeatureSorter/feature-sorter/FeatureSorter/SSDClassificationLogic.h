//
//  SSDClassificationLogic.h
//  FeatureSorter
//
//  Created by Uri Goldberg on 7/3/14.
//  Copyright (c) 2014 SSD. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SSDSingleFeature.h"

@interface SSDClassificationLogic : NSObject

@property (nonatomic) int FeatureValueLimit;
@property (nonatomic) int FeatureEffortLimit;

- (FeatureClassificationEnum) Classify: (int)value usingEffort: (int)effort;

@end
