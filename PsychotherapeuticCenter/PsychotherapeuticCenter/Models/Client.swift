//
//  Client.swift
//  PsychotherapeuticCenter
//
//  Created by Aleksandr Ermakov on 07.08.2022.
//  Copyright © 2022 IDAP. All rights reserved.
	

import Foundation

struct Client: Psychotherapeuticable, Criticable, Interviewable, Regressible {
    
    var name: String
    var role: String
    var trauma: String
    var diagnosis: String
    var amountOfTherapy: Int?
    
    func critic() -> String {
        "Client: My therapist treats me well"
    }
    
    func comment() -> String {
        "Client: My therapy helps me!"
    }
    
    func regression() -> String {
        "Client: I often panic"
    }
    
    func symptoms() -> [String]? {
        ["nervous tic", "apathy", "depression", "nervousness", "poor sleep"]
    }
}
