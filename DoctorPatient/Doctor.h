//
//  Doctor.h
//  DoctorPatient
//
//  Created by Ian Tsai on 2015-05-07.
//  Copyright (c) 2015 Ian Tsai. All rights reserved.
//

#import "Person.h"


@interface Doctor : NSObject

@property (nonatomic,strong) NSString *name;
@property(nonatomic, strong) NSString *specialize;

- (instancetype) initWithName: (NSString *)name initWithSpecialization: (NSString*)specialize;

-(void) askForPatientName;

-(void) askForPatientAge;


@end
