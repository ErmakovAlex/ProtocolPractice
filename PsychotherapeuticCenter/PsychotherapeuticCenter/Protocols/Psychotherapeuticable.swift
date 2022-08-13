//
//  Psychotherapeuticable.swift
//  PsychotherapeuticCenter
//
//  Created by Aleksandr Ermakov on 07.08.2022.
//  Copyright © 2022 IDAP. All rights reserved.
	

import Foundation

protocol Psychotherapeuticable: Traumable {
    
    var name: String { get }
    var role: String { get }
    var amountOfTherapy: Int? { get set }
    
    func symptoms() -> [String]?
}
