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
    clsUndefined,
    clsEasyWin,
    clsPearl,
    clsOyster,
    clsWhiteElephant
}   FeatureClassificationEnum;

@interface SSDFeature : NSObject

@property (nonatomic) int32_t                       ID;
@property (nonatomic) int32_t                       value;
@property (nonatomic) int32_t                       effort;
@property (nonatomic) NSString*                     name;
@property (nonatomic) NSString*                     description;
@property (nonatomic) NSString*                     comments;
@property (nonatomic) FeatureStatusEnum             status;
@property (nonatomic) FeatureClassificationEnum     classification;

@end
