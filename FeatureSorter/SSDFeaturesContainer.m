//
//  SSDFeaturesContainer.m
//  FeatureSorter
//
//  Created by Ana Tr on 7/25/14.
//  Copyright (c) 2014 SSD. All rights reserved.
//

#import "SSDFeaturesContainer.h"

@interface SSDFeaturesContainer ()

// used to hold all existing features
@property (nonatomic, retain) NSMutableArray* items;

@end

@implementation SSDFeaturesContainer

/*
 Get an item from current items

 @param itemID
 @returns: a pointer to the item
*/
-(SSDFeature*) get:(int32_t)itemID{
    for (int i=0; i<[self.items count]; i++) {
        SSDFeature * item = self.items[i];
        if (item.ID == itemID) {
            return item;
        }
    }
    return NULL;
};


/*
 Remove an item from current items
 */
-(BOOL) remove:(int32_t)itemID {
    for (int i=0; i<[self.items count]; i++) {
        SSDFeature * item = self.items[i];
        if (item.ID == itemID) {
            [self.items removeObjectAtIndex:i];
            return YES;
        }
    }
    return NO;
};

@end
