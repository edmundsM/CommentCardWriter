//
//  EditorView.swift
//  CommentCardWriter
//
//  Created by Max Edmunds on 23/02/2022.
//

import SwiftUI

struct EditorView: View {
    @State private var commentCard = ""
    @State private var text = ""
    
    var body: some View {
        Form() {
            TextField(text, text: $commentCard)
            Section {
                Text("hello")
                    .frame(width: 300, height: 210, alignment: .topLeading )
            }
        }
    }
}

struct EditorView_Previews: PreviewProvider {
    static var previews: some View {
        EditorView()
    }
}
