//
//  ContentView.swift
//  FuelEff
//
//  Created by Kevin Lam on 3/3/2025.
//

import SwiftUI


struct FuelEfficiencyView: View {
    
    // MARK: Stored properties
    @State var viewModel = FuelEfficiencyViewModel()
    
    // MARK: Computed properties
    var body: some View {
        VStack {
            if let fuelEfficiency = viewModel.fuelEfficiency {
                
                // Show the provided distance, fuel used, and efficiency
                VStack {
                    Text("Distance: \(fuelEfficiency.distance.formatted()) km")
                        .font(.system(size: 24))
                    
                    Text("Fuel Used: \(fuelEfficiency.fuelUsed.formatted()) liters")
                        .font(.system(size: 24))
                    
                    Text("Efficiency: \(fuelEfficiency.efficiency.formatted(.number.precision(.significantDigits(2)))) liters per 100 km")
                        .font(.system(size: 24))
                }
                .padding()
                
            } else {
                
                ContentUnavailableView(
                    "No fuel 4 u, ERROR",
                    systemImage: "gear.badge.questionmark",
                    description: Text(viewModel.recoverySuggestion)
                )
                .frame(height: 300)
            }
            
            
            // INPUT
            TextField("Distance (km)", text: $viewModel.providedDistance)
                .textFieldStyle(.roundedBorder)
                .keyboardType(.decimalPad)
            
            TextField("Fuel Used (liters)", text: $viewModel.providedFuelUsed)
                .textFieldStyle(.roundedBorder)
                .keyboardType(.decimalPad)
            
        }
        // Extra space at bottom
        Spacer()
    }
    
}



#Preview {
    FuelEfficiencyView()
}

