
import SwiftUI

struct ContentView: View {
    @State
    var showExchangeInfo:Bool = false
    
    @State
    var fromInput:String = ""
    
    @State
    var toInput:String = ""
    
    
    var body: some View {
        ZStack {
            // background image
            Image(.background).resizable().ignoresSafeArea()
            
            VStack {
                Image(.prancingpony).resizable().scaledToFit().frame(height: 200)
                
                Text("Currency Exchange")
                    .font(.title)
                    .foregroundStyle(.white)
                    .padding(.bottom, 40)
                
                HStack {
                    
                    VStack {
                        //currency
                        HStack {
                            Image(.silverpiece).resizable().scaledToFit().frame(height: 20)
                            Text("Silver piece")
                                .font(.headline).bold().foregroundStyle(.white)
                            Spacer()
                            
                        }.padding(.bottom, -3)
                        
                        TextField("Amount", text: $fromInput)
                            .textFieldStyle(.roundedBorder)
                            .multilineTextAlignment(.center)
                    }
                    
                    Spacer()
                    // equals sign
                    Image(systemName: "equal.circle.fill")
                        .font(.title)
                        .foregroundStyle(.white)
                        .symbolEffect(.pulse)
                    Spacer()
                    
                    // ...
                    VStack {
                        //currency
                        HStack {
                            Spacer()
                            Text("Gold piece")
                                .font(.headline).bold().foregroundStyle(.white)
                            Image(.goldpiece).resizable().scaledToFit().frame(height: 20)
                            
                        }.padding(.bottom, -3)
                        
                        TextField("Amount", text: $fromInput)
                            .textFieldStyle(.roundedBorder)
                            .multilineTextAlignment(.center)
                    }
                }.padding().background(.black.opacity(0.5)).clipShape(.rect(cornerRadius: 17))
                
                Spacer()
                
                HStack {
                    Spacer()
                    Button {
                        showExchangeInfo.toggle()
                    } label: {
                        Image(systemName: "info.bubble.fill")
                            .font(.largeTitle)
                            .foregroundStyle(.white)
                    }.padding(.trailing)
                        .sheet(isPresented: $showExchangeInfo) {
                            ExchangeInfo()
                        }
                }
                
            }.padding()
        }
    }
}

#Preview {
    ContentView()
}
