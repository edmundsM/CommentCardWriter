//
//  ContentView.swift
//  CommentCardWriter
//
//  Created by Edmunds, Maximilian (NA) on 08/02/2022.
//

import SwiftUI

struct ContentView: View {
    
    var subjectNames = ["computer science","physics","maths","design"]
    var enjoymentDescriptors = ["despise","dislike","am indifferent to","enjoy","love"]
    var understandingDescriptors = ["awful", "bad", "average", "reasonable", "great"]
    
    @State private var subject = ""
    @State private var subjectEnjoyment = 2.0
    @State private var understanding = 3.0
    @State private var weakness = "learning"
    @State private var weaknessLevel = 5
    @State private var strength = "learning"
    @State private var strengthLevel = 5
    
    
    
    
    var body: some View {
        Form {
            VStack {
                Text("If feel that I have a \(understandingDescriptors[Int(understanding)]) understanding of the content covered so far in \(subject.lowercased()). I \(enjoymentDescriptors[Int(subjectEnjoyment)]) the subject and... ")
                    .frame(width: 300, height: 300, alignment: .center )
                TextField("Subject name...", text: $subject)
                Text("Understanding")
                Slider(value: $understanding, in:0...4, step: 1)
                Text("Enjoyment")
                Slider(value: $subjectEnjoyment, in:0...4, step: 1)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
