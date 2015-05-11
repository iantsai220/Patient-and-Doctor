//
//  DoctorX.h
//  DoctorPatient
//
//  Created by Ian Tsai on 2015-05-07.
//  Copyright (c) 2015 Ian Tsai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PatientX.h"

@interface DoctorX : NSObject


@property (nonatomic,strong) NSString *name;
@property(nonatomic, strong) NSString *specialize;
@property (nonatomic, strong) NSDictionary *inventory;
@property (nonatomic, strong) NSString *prescription;

- (instancetype) initWithName: (NSString *)name initWithSpecialization: (NSString*)specialize;

-(void) replyDocInfo;

-(void) askForPatientInfo: (PatientX *)patient;

-(void) askforMedicalCard: (PatientX *)patient;

-(void) qualifyForMedication:(PatientX *)patient;



@end
