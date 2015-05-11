//
//  main.m
//  DoctorPatient
//
//  Created by Ian Tsai on 2015-05-07.
//  Copyright (c) 2015 Ian Tsai. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "PatientX.h"
#import "DoctorX.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       //create doctor
        DoctorX *doctor = [[DoctorX alloc] initWithName:@"Dr.Hibbert" initWithSpecialization:@"Family doctor"];
        
        //create patient1
        PatientX *patient = [[PatientX alloc]initWithName:@"Ian" age:29 medicalCard:TRUE symptom: @"diarrhea"];
        
        //create patient1
        PatientX *patient2 = [[PatientX alloc]initWithName:@"Homer" age:27 medicalCard:TRUE symptom: @"back pain"];

        //create patient1
        PatientX *patient3 = [[PatientX alloc]initWithName:@"Hobo" age:33 medicalCard:FALSE symptom: @"headache"];

        
        [patient visitDoctor: doctor];
        
//        [patient2 visitDoctor: doctor];
//        
//        [patient3 visitDoctor: doctor];
        
        [patient requestMedication: doctor];
        
        
//        
//        
//        
//        //doctor ask for patient info
//        [doctor askForPatientInfo:patient];
//        
//        //patient ask for doctor information
//        [patient askForDoctorInfo: doctor];
//        
//        //doctor ask for medical card
//        [doctor askforMedicalCard: patient];
        
        

        
        
    }
    return 0;
}
