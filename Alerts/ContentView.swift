//
//  ContentView.swift
//  Alerts
//
//  Created by Scholar on 6/21/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var name = ""
    @State private var password = ""
    @State private var presentAlert = false
    
    

    
    var body: some View {
        VStack (spacing: 50) {
            Text("What is your name?")
            
            TextField("Type name...", text: $name)
                .frame(width: 350.0, height: 40.0)
                .multilineTextAlignment(.center)
                .border(Color.gray, width: 1)
            
            Text("What is your password?")
            
            TextField("Type password...", text: $password)
                .frame(width: 350.0, height: 40.0)
                .autocapitalization(.none)
                .multilineTextAlignment(.center)
                .border(Color.gray, width: 1)
            
          
         
            
            Button("Submit") {
                presentAlert = true
            }
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(.purple)
            

            
            //Text("Welcome \(name). Your favorite color is \(favoriteColor).")
        }
        .padding()
        .alert("Oh no, \(name), you've been hacked!", isPresented: $presentAlert, actions: {
            // actions
        }, message: {
            Text("You fool...")
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
