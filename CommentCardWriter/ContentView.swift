//
//  ContentView.swift
//  CommentCardWriter
//
//  Created by Edmunds, Maximilian (NA) on 08/02/2022.
//

import SwiftUI

struct ContentView: View {
    
    var understandingDescriptors = ["n awful"," bad"," sub-par"," rough","n average"," reasonable"," good", " great","n amazing"," wonderful"]
    var enjoymentDescriptors = ["despise"," hate","dislike","am indifferent to","enjoy","really enjoy","love"]
    
    @State private var subject = ""
    @State private var subjectEnjoyment = 2.0
    @State private var understanding = 3.0
    @State private var weakness = "learning"
    @State private var weaknessLevel = 5
    @State private var strength = "learning"
    @State private var strengthLevel = 5
    
    
    
    
    var body: some View {
        Form {
            Section {
                Text("If feel that I have a\(understandingDescriptors[Int(understanding)]) understanding of the content covered so far in \(subject.lowercased()). I \(enjoymentDescriptors[Int(subjectEnjoyment)]) the subject and... ")
                    .frame(width: 300, height: 300, alignment: .topLeading )
            }
            Section {
                TextField("Subject name...", text: $subject)
            }
            Text("Understanding")
            Slider(value: $understanding, in:0...9, step: 1)
            Text("Enjoyment")
            Slider(value: $subjectEnjoyment, in:0...6, step: 1)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
