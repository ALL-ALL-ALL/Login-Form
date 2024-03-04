//
//  ContentView.swift
//  Login Form
//
//  Created by  Ixart on 02/03/2024.
//

import SwiftUI

let userNameWin = "Allan"  // nom pour la bonne conection
let password = "AA"    // mot de passe pour la bonne conexion


struct ContentView: View {
    @State private var identifiant = ""
    @State private var motDePasse = ""
    @State private var message = "" // message d'avertisement
    @State private var isConnected = Bool() // pour changer un text (apparence)
    @State private var showMessage = false

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

            
            Button(action: {if identifiant == userNameWin && motDePasse == password {
                message = "connecté ✅"
                
                isConnected = true // il est vrai donc vert voir en bas
                showMessage = false // affiche pas

            } else {
                message = "Vous n'avez Pas Entré Votre Login Try Again⚠️."
                
                isConnected = false // il est faux donc tout le contre air
                showMessage = true // Affiche le message d'avertissement
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 10) {
                           showMessage = true
                       }

            }
        }, label: {
                
                Text("connexion")
                    .font(.system(size: 30))
                    .multilineTextAlignment(.center)
                    .bold()
                    .padding(70)
            })
            
            Text(message)
                .foregroundColor(isConnected ? .green : .red) // pour prendre en compte le vert sinon rouge
                .font(.system(size: isConnected ? 30 : 35)) // pareil pour prendre en compte la taile sinon taille  35
                .padding(50)
                .multilineTextAlignment(.center)
                .foregroundColor(.red)
                .bold()
        } // fin vstack
        .padding()

    } // FIN BODY
} // FIN STRUCT
#Preview {
    ContentView()
}
