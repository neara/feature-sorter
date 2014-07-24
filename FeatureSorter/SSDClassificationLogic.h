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

@property (nonatomic) int32_t FeatureValueLimit;
@property (nonatomic) int32_t FeatureEffortLimit;

- (FeatureClassificationEnum) Classify: (int32_t)value usingEffort: (int32_t)effort;

- (id)init;
+ (id)sharedClassificationLogic;

@end
