//
//  CurrencySelector.swift
//  LOTRConverter
//
//  Created by Joel da Rosa on 09/07/24.
//

import SwiftUI

struct CurrencySelector: View {
    @Environment(\.dismiss)
    var dismissWindow
    
    var body: some View {
        ZStack {
            Image(.parchment).resizable().ignoresSafeArea()
            VStack {
                Spacer()
                Text("Select the first currency").fontWeight(.bold).font(.title2)
                
                LazyVGrid(columns: [GridItem(),GridItem(),GridItem()]) {
                    ForEach(0..<5) { 
                        loop in Text("estamos no \(loop+1)")
                    }
                    
                }
                
                Text("Select the second currency").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).font(.title2)
                
                Spacer()
                
                Button("DONE") {
                    dismissWindow()
                }.buttonStyle(.borderedProminent)
                    .tint(.brown)
                    .font(.title)
                    .foregroundStyle(.white)
            }.padding()
            
        }
        .background(.brown)
    }
}

#Preview {
    CurrencySelector()
}
