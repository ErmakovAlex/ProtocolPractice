//
//  Supervisor.swift
//  PsychotherapeuticCenter
//
//  Created by Aleksandr Ermakov on 07.08.2022.
//  Copyright © 2022 IDAP. All rights reserved.
	

import Foundation

struct Supervisor: Psychotherapeuticable, Analizable, Criticable, Supervisable, Mindfullnessable {
    
    var name: String
    var role: String
    var trauma: String
    var isMindfull: Bool
    var amountOfTherapy: Int?
    
    func analize() -> Intervention {
        return Intervention(description: "Supervisor: Supervisant and client have a good therapeutic alliance")
    }
    
    func critic() -> String {
        "Supervisor: Supervisant does not rely enough on their competence"
    }
    
    func supervision() -> Intervention {
        return Intervention(description: "virtually free of symptoms")
    }
    
    func symptoms() -> [String]? {
        nil
    }
}
