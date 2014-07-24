//
//  SSDClassificationLogic.m
//  FeatureSorter
//
//  Created by Uri Goldberg on 7/3/14.
//  Copyright (c) 2014 SSD. All rights reserved.
//

#import "SSDClassificationLogic.h"

@implementation SSDClassificationLogic

- (FeatureClassificationEnum) Classify: (int32_t)value usingEffort: (int32_t)effort
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

- (id)init
{
    if (self = [super init])
    {
        self.FeatureEffortLimit = 5;
        self.FeatureValueLimit = 5;
    }
    
    return self;
}

+ (id)sharedClassificationLogic
{
    static SSDClassificationLogic *sharedLogic = nil;
    @synchronized (self) {
        if (sharedLogic == nil) {
            sharedLogic = [[self alloc] init];
        }
    }
    
    return sharedLogic;
}


@end
