//
//  SSDSingleFeature.m
//  FeatureSorter
//
//  Created by Uri Goldberg on 7/3/14.
//  Copyright (c) 2014 SSD. All rights reserved.
//

#import "SSDSingleFeature.h"

@implementation SSDSingleFeature

- (id)init
{
    if (self =[super init]) {
        self.value = 5;
        self.effort = 5;
    }
    
    return self;
}

@end
