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

@property (nonatomic) int                           Value;
@property (nonatomic) int                           Effort;
@property (nonatomic) NSString*                     Name;
@property (nonatomic) NSString*                     Description;
@property (nonatomic) NSString*                     Comments;
@property (nonatomic) FeatureStatusEnum             Status;
@property (nonatomic) FeatureClassificationEnum     Classification;

@end
