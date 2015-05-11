//
//  PatientX.m
//  DoctorPatient
//
//  Created by Ian Tsai on 2015-05-07.
//  Copyright (c) 2015 Ian Tsai. All rights reserved.
//

#import "PatientX.h"
#import "DoctorX.h"


@implementation PatientX

- (instancetype) initWithName: (NSString *)name age:(int)age medicalCard:(BOOL)medicalCard symptom:(NSString*) symptom{
    self = [super init];
    if (self) {
        self.name = name;
        self.age = age;
        self.medicalCard = medicalCard;
        self.symptom = symptom;
    }
    
    return self;
}

-(void) noMedicalCard{
    NSLog(@"Patient: No");
}

-(void) askForDoctorInfo: (DoctorX *)doctor{
    NSLog(@"Patient: What is your name doctor and specialization?");
    [doctor replyDocInfo];
}

-(void) replyPatientInfo{
    NSLog(@"Patient: %@, %d", self.name, self.age);
}


-(void) visitDoctor: (DoctorX*) doctor{
    //doctor ask for patient info
    [doctor askForPatientInfo:self];
    
    //patient ask for doctor information
    [self askForDoctorInfo: doctor];
    
    //doctor ask for medical card
    [doctor askforMedicalCard: self];
    
}

-(void) requestMedication:(DoctorX *) doctor{
    
    NSLog(@"I have %@, can you give me a prescription?", self.symptom);
    
    [doctor qualifyForMedication: self];
    
}















@end
