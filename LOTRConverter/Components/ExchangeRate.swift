//
//  CurrencyInfo.swift
//  LOTRConverter
//
//  Created by Joel da Rosa on 09/07/24.
//

import SwiftUI

struct ExchangeRate: View {
    var iconFrom:ImageResource;
    var exchangeFrom:String;
    var iconTo: ImageResource;
    var exchangeTo: String;
    
    var body: some View {
        HStack {
            Image(iconFrom).resizable().scaledToFit().frame(height: 33)
            Text(exchangeFrom)
            
            Spacer()
            Image(systemName: "equal")
            Spacer()
            
            Text(exchangeTo)
            Image(iconTo).resizable().scaledToFit().frame(height: 33)
            
        }
    }
}

#Preview {
    ExchangeRate(iconFrom: .goldpiece, exchangeFrom: "1 gold piece", iconTo: .goldpenny, exchangeTo: "4 gold pennies")
}
