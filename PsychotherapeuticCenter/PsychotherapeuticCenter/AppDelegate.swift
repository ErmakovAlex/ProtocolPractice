//
//  AppDelegate.swift
//  PsychotherapeuticCenter
//
//  Created by Aleksandr Ermakov on 07.08.2022.
//  Copyright © 2022 IDAP. All rights reserved.
	

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let client = Client(name: "John", role: "client", trauma: "anxiety", diagnosis: "OCD", amountOfTherapy: 50)
        let therapeut = Psychotherapist(name: "Paul", role: "therapeut", isMindfull: true, trauma: "Guilt", amountOfTherapy: 300)
        let supervisor = Supervisor(name: "Ringo", role: "supervisor", trauma: "Paranoia", isMindfull: true, amountOfTherapy: 500)

        let psychotherapeuticCenter = PsychotherapeuticCenter()

        psychotherapeuticCenter.members = [client, therapeut, supervisor]
        psychotherapeuticCenter.therapeuts = [therapeut, supervisor]
        psychotherapeuticCenter.reviewers = [client, supervisor]
        psychotherapeuticCenter.observables = [client, therapeut]

        psychotherapeuticCenter.greetings(client: client)
        psychotherapeuticCenter.conclusions()
        psychotherapeuticCenter.feedbackAboutTherapy()
        psychotherapeuticCenter.feedbackAboutTherapist()
        
        return true
    }
}

