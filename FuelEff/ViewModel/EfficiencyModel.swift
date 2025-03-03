//
//  EfficiencyModel.swift
//  FuelEff
//
//  Created by Kevin Lam on 3/3/2025.
//

import Foundation

@Observable
class FuelEfficiencyViewModel {
    
    // MARK: Stored properties
    
    // Holds whatever the user has typed in the text fields
    var providedDistance: String
    var providedFuelUsed: String
    
    // Holds an appropriate error message, if there was a
    // problem with input provided by the user
    var recoverySuggestion: String = ""
    
   
        
        
