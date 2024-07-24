//
//  CurrencyIcon.swift
//  LOTRConverter
//
//  Created by Joel da Rosa on 15/07/24.
//

import SwiftUI

struct CurrencyIcon: View {
    let icon:ImageResource
    let title:String
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Image(icon)
                .resizable()
                .scaledToFit()
            Text(title)
                .padding(3)
                .font(.caption)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .background(.brown.opacity(0.75))
        }
        .padding(3)
        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
        .background(.brown)
        .clipShape(.rect(cornerRadius: 25))
    }
}

#Preview {
    CurrencyIcon(icon: .copperpenny, title: "Copper Penny")
}
