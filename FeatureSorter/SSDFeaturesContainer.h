//
//  SSDFeaturesContainer.h
//  FeatureSorter
//
//  Created by Ana Tr on 7/25/14.
//  Copyright (c) 2014 SSD. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SSDFeature.h"

@interface SSDFeaturesContainer : NSObject

@property (nonatomic, retain) NSString *primarySort;

- (SSDFeature*)         get:(int32_t)itemID;
- (BOOL)                add:(SSDFeature* )item;
- (BOOL)                remove:(int32_t)itemID;
- (BOOL)                update:(SSDFeature* )item;
- (void)                refreshSubset;
- (BOOL)                load;
- (BOOL)                save;
- (BOOL)                clearAll;
- (NSMutableArray*)     getCurrentSubset;

@end
