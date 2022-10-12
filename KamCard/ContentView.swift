//
//  ContentView.swift
//  KamCard
//
//  Created by Kamil Suwada on 27/12/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            
            Color(red: 0.09, green: 0.63, blue: 0.52)
                .ignoresSafeArea()
            
            VStack {
                
                Image("kam")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))
                
                Text("Kamil Suwada")
                    .font(.title)
                    .font(.system(size: 40))
                    .bold()
                    .foregroundColor(.white)
                    .padding(.all, 5.0)
                    
                Text("iOS Developer")
                    .font(.headline)
                    .font(.system(size: 25))
                    .bold()
                    .foregroundColor(.white)
                    .padding(.all, 5.0)
                
                Divider()
                
                InfoView(text: "+44 (0) 7519665641", imageName: "phone.fill")
                InfoView(text: "kamilsuwada@icloud.com", imageName: "envelope.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
