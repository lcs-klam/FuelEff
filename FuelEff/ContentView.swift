//
//  ContentView.swift
//  FuelEff
//
//  Created by Kevin Lam on 3/3/2025.
//

import SwiftUI


            
            // INPUT
            TextField("Distance (km)", text: $viewModel.providedDistance)
                .textFieldStyle(.roundedBorder)
                .keyboardType(.decimalPad)
            
            TextField("Fuel Used (liters)", text: $viewModel.providedFuelUsed)
                .textFieldStyle(.roundedBorder)
                .keyboardType(.decimalPad)
            
     
        
        
#Preview {
    FuelEfficiencyView()
}

