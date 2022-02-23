//
//  RootTabView.swift
//  CommentCardWriter
//
//  Created by Max Edmunds on 23/02/2022.
//

import SwiftUI

struct RootTabView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Image(systemName: "slider.horizontal.3")
                Text("Creator")
                }
            EditorView()
                .tabItem {
                    Image(systemName: "square.and.pencil")
                Text("Editor")
                }
        }
    }
}

struct RootTabView_Previews: PreviewProvider {
    static var previews: some View {
        RootTabView()
    }
}
