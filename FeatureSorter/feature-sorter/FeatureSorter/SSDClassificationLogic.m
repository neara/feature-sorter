//
//  SSDClassificationLogic.m
//  FeatureSorter
//
//  Created by Uri Goldberg on 7/3/14.
//  Copyright (c) 2014 SSD. All rights reserved.
//

#import "SSDClassificationLogic.h"

@implementation SSDClassificationLogic

- (FeatureClassificationEnum) Classify: (int)value usingEffort: (int)effort
{
    if (value < self.FeatureValueLimit) {
        if (effort < self.FeatureEffortLimit)
            return clsEasyWin;
        else
            return clsWhiteElephant;
    }
    else {
        if (effort < self.FeatureEffortLimit)
            return clsPearl;
        else
            return clsOyster;
    }
}

@end
