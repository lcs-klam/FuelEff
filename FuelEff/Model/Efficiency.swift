//
//  Efficiency.swift
//  FuelEff
//
//  Created by Kevin Lam on 3/3/2025.
//

import Foundation

// MODEL
struct FuelEfficiency {
    
    // MARK: Stored properties
    
    var distance: Double
    var fuelUsed: Double
    
    // MARK: Computed properties
    
    var efficiency: Double {
        return (fuelUsed / distance) * 100
    }
}
