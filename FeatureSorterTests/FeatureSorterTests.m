//
//  FeatureSorterTests.m
//  FeatureSorterTests
//
//  Created by Ana Tr on 6/26/14.
//  Copyright (c) 2014 SSD. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "SSDFeature.h"
#import "SSDFeaturesContainer.h"
#import "SSDClassificationLogic.h"


@interface FeatureSorterTests : XCTestCase

@end

@implementation FeatureSorterTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testFeature
{
    SSDFeature *item = [[SSDFeature alloc] init];
    item.value = 12;
    item.effort = 5;
    item.name = @"test feature";
    
    XCTAssertEqual(item.status, statusNotStarted);
    XCTAssertEqual(item.classification, clsUndefined);
    
    SSDClassificationLogic *logic = [SSDClassificationLogic sharedClassificationLogic];
    item.classification = [logic Classify:item.value usingEffort:item.effort];
    
    XCTAssertNotEqual(item.classification, clsUndefined);
}

- (void)testFeaturesContainer
{
    SSDFeaturesContainer *container = [[SSDFeaturesContainer alloc] init];
}

@end
