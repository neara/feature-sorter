//
//  SSDFeaturesContainer.h
//  FeatureSorter
//
//  Created by Ana Tr on 7/25/14.
//  Copyright (c) 2014 SSD. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SSDSingleFeature.h"

@interface SSDFeaturesContainer : NSObject

- (BOOL) add:(SSDSingleFeature* )item;
- (BOOL) remove:(int)itemID;

@end
