//
//  SSDSingleFeature.h
//  FeatureSorter
//
//  Created by Uri Goldberg on 7/3/14.
//  Copyright (c) 2014 SSD. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    statusNotStarted,
    statusWorkInProgress,
    statusCompleted
}   FeatureStatusEnum;

typedef enum {
    clsEasyWin,
    clsPearl,
    clsOyster,
    clsWhiteElephant
}   FeatureClassificationEnum;

@interface SSDSingleFeature : NSObject

@property (nonatomic, strong) NSNumber* mFeatureValue;
@property (nonatomic, strong) NSNumber* mFeatureEffort;
@property (nonatomic, strong) NSString* mFeatureName;
@property (nonatomic, strong) NSString* mFeatureDescription;
@property (nonatomic, strong) NSString* mFeatureComments;
@property (nonatomic) FeatureStatusEnum mFeatureStatus;
@property (nonatomic) FeatureClassificationEnum mFeatureClassification;

@end
