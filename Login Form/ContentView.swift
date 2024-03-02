//
//  ContentView.swift
//  Login Form
//
//  Created by  Ixart on 02/03/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var identifiant = ""
    @State private var motDePasse = ""

    var body: some View {
        
        VStack(alignment:.center){
            

            TextField("Identifiant", text: $identifiant )
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
                .multilineTextAlignment(.leading)
                .padding(.leading,-15)

            
                .padding()
            
            TextField("Mot de Passe", text: $motDePasse )
                .textFieldStyle(RoundedBorderTextFieldStyle())

                .multilineTextAlignment(.leading)


            
            
            
            
            
            Text("connexion")
                .font(.system(size: 30))
                .multilineTextAlignment(.center)
                .bold()
            
            
            
            
        } // fin vstack
        .padding()
        
        
        
        
        
        
        
        
    } // FIN BODY
} // FIN STRUCT

#Preview {
    ContentView()
}
