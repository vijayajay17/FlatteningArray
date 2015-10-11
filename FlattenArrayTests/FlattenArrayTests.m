//
//  FlattenArrayTests.m
//  FlattenArrayTests
//
//  Created by Vijay on 10/7/15.
//  Copyright © 2015 Vijay. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ViewController.h"

@interface FlattenArrayTests : XCTestCase
@property(nonatomic) ViewController *viewControllerObj;
@end

@implementation FlattenArrayTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    self.viewControllerObj = [[ViewController alloc] init];

}

-(void)testEmptyArray
{
    NSArray *emptyArray = [self.viewControllerObj flatteningArray:@[]];
    XCTAssertEqual(emptyArray, @[]);
}

-(void)testFlattenArray
{
    NSArray *unflattenArray = [self.viewControllerObj flatteningArray:@[@[@1, @2, @3], @[@4, @5, @6]]];
    NSArray *flattenedArray = @[@1, @2, @3, @4, @5, @6];
    XCTAssertEqualObjects(unflattenArray, flattenedArray);
}

-(void)testSingleValue
{
    NSArray *arrayWithUnflattenValues = [NSArray arrayWithObjects:@[@1], nil];
    NSArray *unflattenArray = [self.viewControllerObj flatteningArray:arrayWithUnflattenValues];
    NSArray *flattenedArray = @[@1];
    XCTAssertEqualObjects(unflattenArray, flattenedArray);
}

-(void)testDifferentarrayValues
{
    NSArray *arrayWithUnflattenValues = [NSArray arrayWithObjects:@[@1,@"intercom",@5], nil];
    NSArray *unflattenArray = [self.viewControllerObj flatteningArray:arrayWithUnflattenValues];
    NSArray *flattenedArray = @[@1,@"intercom",@5];
    XCTAssertEqualObjects(unflattenArray, flattenedArray);
}


- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
