//
//  Patient.h
//  DoctorPatient
//
//  Created by Ian Tsai on 2015-05-07.
//  Copyright (c) 2015 Ian Tsai. All rights reserved.
//

#import "Person.h"
#import "Doctor.h"

@interface Patient : Person

@property (nonatomic, strong) NSString *medicalCard;
@property (nonatomic,strong) NSString *name;
@property (nonatomic, assign) int age;

- (instancetype) initWithName: (NSString *)name initWithAge: (int) age;

-(void) askForDoctorName;

-(void) askForDoctorSpecialization;

-(void) askForDoctor: (Doctor*) doctor;


@end
