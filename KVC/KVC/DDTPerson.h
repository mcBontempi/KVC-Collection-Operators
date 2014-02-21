//
//  DDTPerson.h
//  KVC
//
//  Created by Daren David Taylor on 21/02/2014.
//  Copyright (c) 2014 com.DarenDavidTaylor. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DDTPerson : NSObject

+ (instancetype)personWithFirstName:(NSString *)firstName lastName:(NSString *)lastName age:(NSUInteger)age;

@property (nonatomic, strong) NSString *firstName;
@property (nonatomic, strong) NSString *lastName;
@property (nonatomic, assign) NSUInteger age;

@end
