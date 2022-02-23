//
//  EditorView.swift
//  CommentCardWriter
//
//  Created by Max Edmunds on 23/02/2022.
//

import SwiftUI

struct EditorView: View {
    @State var commentCard: String
    
    var body: some View {
        Form() {
            TextEditor(text: $commentCard)
                .frame(width: 300, height: 210, alignment: .topLeading)
            
        }
    }
}

struct EditorView_Previews: PreviewProvider {
    static var previews: some View {
        EditorView(commentCard: "")
    }
}
