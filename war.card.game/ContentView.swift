//
//  ContentView.swift
//  war.card.game
//
//  Created by Andrei-Gabriel Popa on 22.03.2022.
//

import SwiftUI

struct ContentView: View {
    
   @State private var carteJucator = "card5"
   @State private var carteCPU = "card9"
   @State private var scorJucator = 0
   @State private var scorCPU = 0
    
    var body: some View {
        ZStack{
        
            Image("background").ignoresSafeArea()
            
        VStack{
                Spacer()
            Image("logo")
                Spacer()
            HStack{
                Spacer()
            Image(carteJucator)
                Spacer()
            Image(carteCPU)
                Spacer()
                
            }
            Spacer()
            Button(action: {
                
                //Generate a random number between 2 and 14
                
                let jucatorRand = Int.random(in: 2...14)
                let cpuRand = Int.random(in: 2...14)
                
                //Update the cards
                carteJucator = "card" + String(jucatorRand)
                carteCPU = "card" + String(cpuRand)
                
                //Update the score
                
                if jucatorRand > cpuRand {
                scorJucator += 1
                }else if cpuRand > jucatorRand{
                    scorCPU += 1
                }
                //scorCPU += 1
                
                
            }, label: {
                Image("dealbutton")

            })

            Spacer()
            HStack{
                    Spacer()
                VStack{
                    Text("Player")
                        .font(.headline)
                        .foregroundColor(Color.white)
                        .padding(.bottom, 10.0)
                    Text(String(scorJucator))
                        .font(.largeTitle)
                        .foregroundColor(Color.white)
                }
                    Spacer()
                VStack{
                    
                    Text("CPU")
                        .font(.headline)
                        .foregroundColor(Color.white)
                        .padding(.bottom, 10.0)
                    Text(String(scorCPU))
                        .font(.largeTitle)
                        .foregroundColor(Color.white)
                    }
                    Spacer()
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
