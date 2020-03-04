//
//  ContentView.swift
//  ToggleComponent
//
//  Created by Mickael Mas on 04/03/2020.
//  Copyright © 2020 APPIWEDIA. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isOptionActivated = false
    
    @State private var isFavoriteActivated = false
    @State private var isTrashActivated = false
    @State private var isSendActivated = false
    @State private var isDisturbActivated = false

    var body: some View {
        Form {
            Section {
                Toggle(isOn: $isOptionActivated, label: {
                    Text("Voir les options")
                })
            }
            
            if isOptionActivated {
                Section {
                Toggle(isOn: $isFavoriteActivated, label: {
                    HStack {
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                        Text("Favoris")
                    }
                })
                
                Toggle(isOn: $isTrashActivated, label: {
                    HStack {
                        Image(systemName: "trash.fill")
                        .foregroundColor(.red)
                        Text("Corbeille")
                    }
                })
                
                Toggle(isOn: $isSendActivated, label: {
                    HStack {
                        Image(systemName: "paperplane.fill")
                        .foregroundColor(.blue)
                        Text("Envoi")
                    }
                })
                
                Toggle(isOn: $isDisturbActivated, label: {
                    HStack {
                        Image(systemName: "moon.fill")
                        .foregroundColor(.purple)
                        Text("Ne pas déranger")
                    }
                })
            }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
