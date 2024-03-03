//
//  ContentView.swift
//  Login Form
//
//  Created by  Ixart on 02/03/2024.
//

import SwiftUI

let userNameWin = "Allan"  // nom pour la bonne conection
let password = "Azerty"    // mot de passe pour la bonne conexion

struct ContentView: View {
    @State private var identifiant = ""
    @State private var motDePasse = ""

    var body: some View {             
        
        VStack(alignment:.center){
            
            Text("vous n'avez pas entrer votre login")
                .foregroundStyle(.red)
                .bold()
            

            TextField("Identifiant", text: $identifiant )
            
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .foregroundStyle(.green)
                .padding()

                .multilineTextAlignment(.leading)
                .padding(.leading,-15)

            
                
            
            TextField("Mot de Passe", text: $motDePasse )
            
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .foregroundStyle(.green)
                .padding()
            
                .multilineTextAlignment(.leading)
                .padding(.leading,-15)



            
            
            
            
            Button(action: {
                
                
                
            }, label: {
                
                Text("connexion")
                    .font(.system(size: 30))
                    .multilineTextAlignment(.center)
                    .bold()
            })
            
            
            
            
            
            
            
        } // fin vstack
        .padding()
        
        
        
        
        
        
        
        
    } // FIN BODY
} // FIN STRUCT

#Preview {
    ContentView()
}
