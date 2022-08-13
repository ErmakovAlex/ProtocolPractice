//
//  PsychotherapeuticCenter.swift
//  PsychotherapeuticCenter
//
//  Created by Aleksandr Ermakov on 07.08.2022.
//  Copyright © 2022 IDAP. All rights reserved.
	

import Foundation

class PsychotherapeuticCenter {
    
    var members: [Psychotherapeuticable] = []
    var therapeuts: [Supervisable & Analizable] = []
    var reviewers: [Criticable] = []
    var observables: [Interviewable] = []
    
    func greetings(client: Regressible) {
        print(client.regression())
        for member in members {
            print("My name is \(member.name), I am a \(member.role). I have \(String(describing: member.amountOfTherapy)) hours of therapy")
            if let symptoms = member.symptoms() {
                print("I have next symptoms:")
                for symptome in symptoms {
                    print(symptome)
                }
            }
        }
    }
    
    func conclusions() {
        for therapeut in therapeuts {
            print("I think, that client has \(therapeut.supervision().description)")
            print(therapeut.analize())
        }
    }
    
    func feedbackAboutTherapist() {
        for reviewer in reviewers {
            print(reviewer.critic())
        }
    }
    
    func feedbackAboutTherapy() {
        for observable in observables {
            print(observable.comment())
        }
    }
}
