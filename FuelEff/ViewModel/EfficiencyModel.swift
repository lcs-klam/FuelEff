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
    var givenDistance: String
    var providedFuelUsed: String
    
    // Holds an appropriate error message, if there was a
    // problem with input provided by the user
    var recoverySuggestion: String = ""
    
    
    var fuelEfficiency: FuelEfficiency? {
        
        guard let distance = Double(givenDistance), distance > 0 else {
            recoverySuggestion = "Please provide a positive value for the distance."
            return nil
        }
        
        
        guard let fuelUsed = Double(providedFuelUsed), fuelUsed >= 0 else {
            recoverySuggestion = "Please provide a positive value for the fuel used."
            return nil
        }
        
        recoverySuggestion = "" // No error message yet, for now
        return FuelEfficiency(distance: distance, fuelUsed: fuelUsed)
    }
    
    // MARK: Initializers
    init(
        providedDistance: String = "",
        providedFuelUsed: String = "",
        recoverySuggestion: String = ""
    ) {
        self.givenDistance = providedDistance
        self.providedFuelUsed = providedFuelUsed
        self.recoverySuggestion = recoverySuggestion
    }
}

