//
//  Psychotherapist.swift
//  PsychotherapeuticCenter
//
//  Created by Aleksandr Ermakov on 07.08.2022.
//  Copyright © 2022 IDAP. All rights reserved.
	

import Foundation

struct Psychotherapist: Psychotherapeuticable, Analizable, Supervisable, Mindfullnessable, Interviewable {
    
    var name: String
    var role: String
    var isMindfull: Bool
    var trauma: String
    var amountOfTherapy: Int?
    
    func analize() -> Intervention {
        return Intervention(description: "Therapist: The client does not feel capable of doing something well")
    }
    
    func supervision() -> Intervention {
        return Intervention(description: "some improvements")
    }
    
    func comment() -> String {
        "Therapist: Feedback helps me to outline the main points in therapy"
    }
    
    func symptoms() -> [String]? {
        nil
    }
}
