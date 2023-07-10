//
//  ContentView.swift
//  War Card Game
//
//  Created by Rico Oktananda on 03/07/23.
//

import SwiftUI

struct ContentView: View {
   
    @State var playerCard: String = "back"
    @State var cpuCard: String = "back"
    
    @State var playerScore: Int = 0
    @State var cpuScore: Int = 0
    
    var body: some View {
        ZStack {
            Image("background-cloth").resizable().ignoresSafeArea()
            
            VStack {
                Image("logo").padding(.bottom, 40)
                
                HStack(spacing: 24.0) {
                    //this
                    Image(playerCard)
                    //this
                    Image(cpuCard)
                }.padding(.bottom, 40)
                
                Button {
                    //this
                    deal()
                } label: {
                    Image("button")
                }.padding(.bottom, 40)

                HStack(spacing: 60.0) {
                    
                    VStack(spacing: 24.0) {
                        Text("Player")
                            .font(.title3)
                            .fontWeight(.medium)
                        //this
                        Text(String(playerScore))
                            .font(.largeTitle).fontWeight(.bold)
                    }
                    
                    VStack(spacing: 24.0) {
                        Text("CPU")
                            .font(.title3)
                            .fontWeight(.medium)
                        //this
                        Text(String(cpuScore))
                            .font(.largeTitle).fontWeight(.bold)
                    }
                }.foregroundColor(.white)
            }
            .padding(16.0)
        }
    }
    
    func deal() {
        let playerNumber = Int.random(in: 2...14)
        let cpuNumber = Int.random(in: 2...14)
        
        playerCard = "card" + String(playerNumber)
        cpuCard = "card" + String(cpuNumber)
        
        if playerNumber == cpuNumber {
            playerScore += 0
        } else if playerNumber > cpuNumber {
            playerScore += 1
        } else if playerNumber < cpuNumber {
            cpuScore += 1
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
