//
//  DDTPerson.m
//  KVC
//
//  Created by Daren David Taylor on 21/02/2014.
//  Copyright (c) 2014 com.DarenDavidTaylor. All rights reserved.
//

#import "DDTPerson.h"

@implementation DDTPerson

- (instancetype)initWithFirstName:(NSString *)firstName lastName:(NSString *)lastName age:(NSUInteger)age
{
    if (self == [super init]) {
        self.firstName = firstName;
        self.lastName = lastName;
        self.age = age;
    }
    
    return self;
}

+ (instancetype)personWithFirstName:(NSString *)firstName lastName:(NSString *)lastName age:(NSUInteger)age
{
   return [[self alloc] initWithFirstName:firstName lastName:lastName age:age];
}

@end
