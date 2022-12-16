//
//  ContentView.swift
//  Dautonimetro
//
//  Created by Matheus de Oliveira on 16/12/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("image")
                .resizable()
                .frame(width: 200,height: 200)
                .imageScale(.small)
                .foregroundColor(.accentColor)
            Text("Bem vindo ao Dautonímetro!")
                .padding()
            HStack{
                Button(action:{
                    
                }){
                Text("Teste de Dautonismo")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(Color.white)
                        .font(Font.title)
                        .cornerRadius(50)
                        
                }
                
                Button(action:{
                    
                }){
                Text("Detecção de cores")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(Color.white)
                        .font(Font.title)
                        .cornerRadius(50)
                        
                }
            }
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
