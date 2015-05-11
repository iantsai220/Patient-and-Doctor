//
//  DoctorX.m
//  DoctorPatient
//
//  Created by Ian Tsai on 2015-05-07.
//  Copyright (c) 2015 Ian Tsai. All rights reserved.
//

#import "DoctorX.h"

@interface DoctorX() {
    NSMutableArray *_patientList;
}

@end

@implementation DoctorX



- (instancetype) initWithName: (NSString *)name initWithSpecialization: (NSString*)specialize{
    self = [super init];
    if (self) {
        self.name = name;
        self.specialize = specialize;
        _patientList = [[NSMutableArray alloc] init];
        _inventory = @{@"back pain": @"tylenol",
                                    @"headache": @"advil",
                                    @"diarrhea": @"pepto-bismol"};
    }
    return self;
}

-(void) replyDocInfo {
    NSLog(@"Doctor: My name is %@, and I am a %@", self.name, self.specialize);
}

-(void) askForPatientInfo: (PatientX *)patient;
{
    NSLog(@"Doctor: What is your name and age?");
    [patient replyPatientInfo];
}

-(void) askforMedicalCard: (PatientX *)patient{
    NSLog(@"Doctor: Do you have a Medical Card %@", patient.name);
    
    //check for medical card
    if (patient.medicalCard == TRUE) {
        
        NSLog(@"Doctor: Great, let me add you to my patient list");
        [_patientList addObject:patient];
        
    }
    else {
        
        [patient noMedicalCard];
        NSLog(@"Doctor: I'm sorry, but I can't accept you without a medical card");
        
    }
    
    //NSLog(@"%@", _patientList);
}

-(void) qualifyForMedication:(PatientX *)patient{
    
    if ([_patientList containsObject: patient]) {
        
        _prescription = [_inventory objectForKey:patient.symptom];
        NSLog(@"Ok, here is a prescription for %@", [self prescription]);
    }
    else {
        NSLog(@"Sorry you aren't my patient, I can't prescribe you any medication");
    }
         
}







@end
