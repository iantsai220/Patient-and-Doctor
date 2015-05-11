//
//  PatientX.h
//  DoctorPatient
//
//  Created by Ian Tsai on 2015-05-07.
//  Copyright (c) 2015 Ian Tsai. All rights reserved.
//

#import <Foundation/Foundation.h>

@class DoctorX;

@interface PatientX : NSObject


@property (nonatomic,strong) NSString *name;
@property (nonatomic, strong) NSString *symptom;
@property (nonatomic, assign) BOOL medicalCard;
@property (nonatomic, assign) int age;

- (instancetype) initWithName: (NSString *)name age:(int)age medicalCard:(BOOL)medicalCard symptom:(NSString*) symptom;

-(void) replyPatientInfo;

-(void) askForDoctorInfo: (DoctorX *)doctor;

-(void) visitDoctor: (DoctorX *) doctor;

-(void) noMedicalCard;

-(void) requestMedication:(DoctorX *) doctor;

@end
