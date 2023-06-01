//
//  ContentView.swift
//  Hyperhire
//
//  Created by Nathan Getachew on 6/1/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView  {
            PostScreen()
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        Text("자유톡")
                            .font(.notoSans(.bold, 18))
                            .foregroundColor(.textPrimary)
                    }
                }
                .navigationBarItems(leading: Button {
                    
                } label: {
                    Image("chevron-left")
                }, trailing: Button{
                } label: {
                    Image("bell")
                } )
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
