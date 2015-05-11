//
//  Doctor.m
//  DoctorPatient
//
//  Created by Ian Tsai on 2015-05-07.
//  Copyright (c) 2015 Ian Tsai. All rights reserved.
//

#import "Doctor.h"

@implementation Doctor

- (instancetype) initWithName: (NSString *)name initWithSpecialization: (NSString*)specialize{
    self = [super init];
    if (self) {
        self.name = name;
        self.specialize = specialize;
    }
    return self;
}

-(void) askForPatientInfo{
    NSLog(@"What is your Name and age");
}


@end
