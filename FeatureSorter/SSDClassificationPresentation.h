//
//  SSDClassificationPresentation.h
//  FeatureSorter
//
//  Created by Ana Tr on 7/25/14.
//  Copyright (c) 2014 SSD. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SSDClassificationPresentationItem.h"

@interface SSDClassificationPresentation : NSObject

// getter for presentation details of given classification
- (SSDClassificationPresentationItem*) getFor:(int)classification;

// singleton getter for SSDClassificationPresentation
+ (SSDClassificationPresentation*) sharedClassificationPresentation;

@end
