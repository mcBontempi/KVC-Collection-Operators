//
//  DDTViewController.m
//  KVC
//
//  Created by Daren David Taylor on 21/02/2014.
//  Copyright (c) 2014 com.DarenDavidTaylor. All rights reserved.
//

#import "DDTViewController.h"
#import "DDTPerson.h"

@interface DDTViewController ()

@end

@implementation DDTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [self testKVC];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)testKVC
{
    NSArray *numbers = @[@21, @54, @121, @1];
    
    NSArray *people = @[
                        [DDTPerson personWithFirstName:@"David" lastName:@"Taylor" age:101],
                        [DDTPerson personWithFirstName:@"Daren" lastName:@"Taylor" age:41],
                        [DDTPerson personWithFirstName:@"David" lastName:@"Smithson" age:23]
                        ];
 
    NSLog(@"count of numbers %d", [[numbers valueForKeyPath:@"@count"] integerValue]);
    NSLog(@"count of people %d", [[people valueForKeyPath:@"@count"] integerValue]);
    
    NSLog(@"average of Numbers = @%f", [[numbers valueForKeyPath:@"@avg.doubleValue"] doubleValue]);
    NSLog(@"averge age of people = %f", [[people valueForKeyPath:@"@avg.age"] doubleValue]);
    
    NSLog(@"sum of Numbers = @%f", [[numbers valueForKeyPath:@"@sum.doubleValue"] doubleValue]);
    NSLog(@"sum of age of people = %f", [[people valueForKeyPath:@"@sum.age"] doubleValue]);
 
    NSArray *distinctFirstNames = [people valueForKeyPath:@"@distinctUnionOfObjects.firstName"];
    
    NSLog(@"unique first names = %@", distinctFirstNames);
    
    
}

@end
