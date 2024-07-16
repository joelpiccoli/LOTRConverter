//
//  ExchangeInfo.swift
//  LOTRConverter
//
//  Created by Joel da Rosa on 09/07/24.
//

import SwiftUI

struct ExchangeInfo: View {
    var body: some View {
        ZStack {
            Image(.parchment).resizable().ignoresSafeArea()
            
            VStack {
                VStack {
                    Text("Exchange Rate")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).bold()
                        .tracking(2.5)
                        .foregroundStyle(.brown)
                        .padding(.bottom, 12)
                    
                    Text("Here at the Prancing Pony, we are happy to offer you a place where you can exchange all the known currencies in the entire world except one. We used to take Brandy Bucks, but after finding out that it was a person instead of a piece of paper, we realized it had no value to us. Below is a simple guide to our currency exchange rates.")
                        .font(.headline)
                        .multilineTextAlignment(.center)
                    
                    ExchangeRate(
                        iconFrom: .goldpiece, exchangeFrom: "1 gold piece", iconTo: .goldpenny, exchangeTo: "4 gold pennies")
                    ExchangeRate(
                        iconFrom: .goldpenny, exchangeFrom: "1 gold penny", iconTo: .silverpiece, exchangeTo: "4 silver pieces")
                    
                    ExchangeRate(
                        iconFrom: .silverpiece, exchangeFrom: "1 silver piece", iconTo: .silverpenny, exchangeTo: "4 silver pennies")
                    
                    ExchangeRate(
                        iconFrom: .silverpenny, exchangeFrom: "1 silver penny", iconTo: .copperpenny, exchangeTo: "100 cooper pennies")
                    
                    Spacer()
                    
                    Button("DONE") {
                        
                    }.buttonStyle(.borderedProminent).tint(.brown).font(.title).foregroundStyle(.white)
                    
                }.padding(.horizontal, 10)
            }
                .padding()
                .foregroundStyle(.black)
        }
            .background(.black)
        
    }
}

#Preview {
    ExchangeInfo()
}
