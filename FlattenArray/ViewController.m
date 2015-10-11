//
//  ViewController.m
//  FlattenArray
//
//  Created by Vijay on 10/7/15.
//  Copyright © 2015 Vijay. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSArray *dataUnflatened = [NSArray arrayWithObjects:@[@[@1, @2, @3], @[@4, @5, @6]], nil];
    NSArray *flattenedArray = [self flatteningArray:dataUnflatened];
    
    /////////******************
    //////// This also works but for efficiency we use the other
    ////////*******************
    /*        for (int i = 0; i < [flattenedArray count]; i++) {
     NSMutableArray *flattenedArray = [[NSMutableArray alloc] init];
     for (int j = 0; j < 4; j++) {
     [flattenedArray addObject:[NSNumber numberWithInt:j]];
     }
     }
     */
    
    
}


/////////******************
//////// Method called for flattening an array using KVC methodology
////////*******************


-(NSArray *)flatteningArray:(NSArray *)unflattenArray
{
    NSArray *flattenedArray = [NSArray array];
    if(unflattenArray.count>0)
    {
        flattenedArray = [unflattenArray valueForKeyPath: @"@unionOfArrays.self"];
        
        return flattenedArray;
    }
    return flattenedArray;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
