//
//  SSDClassificationPresentation.m
//  FeatureSorter
//
//  Created by Ana Tr on 7/25/14.
//  Copyright (c) 2014 SSD. All rights reserved.
//

#import "SSDClassificationPresentation.h"
#import "SSDClassificationPresentationItem.h"
#import "SSDSingleFeature.h"


@interface SSDClassificationPresentation()

@property (nonatomic) NSDictionary* choices;

@end

@implementation SSDClassificationPresentation

#pragma mark - Instance initialization

- (id) init
{
    if (self == [super init]) {
        
        // create classification represantation items
        // easy win representation
        SSDClassificationPresentationItem *easyWin = [[SSDClassificationPresentationItem alloc] init];
        easyWin.name = @"Easy Win";
        easyWin.backgroundColor = [UIColor yellowColor];
        
        // white elephant representation
        SSDClassificationPresentationItem *whiteElephant = [[SSDClassificationPresentationItem alloc] init];
        whiteElephant.name = @"White Elephant";
        whiteElephant.backgroundColor = [UIColor redColor];
        
        // oyster representation
        SSDClassificationPresentationItem *oyster = [[SSDClassificationPresentationItem alloc] init];
        oyster.name = @"Oyster";
        oyster.backgroundColor = [UIColor purpleColor];
        
        // pearl representation
        SSDClassificationPresentationItem *pearl = [[SSDClassificationPresentationItem alloc] init];
        pearl.name = @"Perl";
        pearl.backgroundColor = [UIColor greenColor];
        
        // Private: classification represantation options
        self.choices = [NSDictionary dictionaryWithObjectsAndKeys:
                        easyWin, [NSNumber numberWithInt:clsEasyWin],
                        whiteElephant, [NSNumber numberWithInt:clsWhiteElephant],
                        oyster, [NSNumber numberWithInt:clsOyster],
                        pearl, [NSNumber numberWithInt:clsPearl], 
                        nil];
    }
    return self;
}

#pragma mark - Singleton definition

// Thread safe declaration of singleton
+ (SSDClassificationPresentation* ) sharedClassificationPresentation
{
    static id _sharedRepresentation;
    static dispatch_once_t onceToken;


    dispatch_once(&onceToken, ^{
        _sharedRepresentation = [[self alloc] init];
    });
    
    return _sharedRepresentation;
}

#pragma mark - Public methods

- (SSDClassificationPresentationItem*) getFor:(int)classification
{
    return [self.choices objectForKey:[NSNumber numberWithInt:classification]];
}

@end
