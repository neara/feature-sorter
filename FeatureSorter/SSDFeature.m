//
//  SSDSingleFeature.m
//  FeatureSorter
//
//  Created by Uri Goldberg on 7/3/14.
//  Copyright (c) 2014 SSD. All rights reserved.
//

#import "SSDFeature.h"

@implementation SSDFeature

@synthesize description;

- (id)init
{
    if (self == [super init]) {
        self.value = 5;
        self.effort = 5;
        self.status = statusNotStarted;
        self.classification = clsUndefined;
    }
    
    return self;
}

@end
